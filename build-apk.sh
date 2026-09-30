#!/usr/bin/env bash
set -euo pipefail

if [[ "${1:-}" == --container ]]; then
  cd /workspace
  mode="${2:?Missing mode}"
  version=$(sed -n 's/^[[:space:]]*versionName = "\([^"]*\)".*/\1/p' app/build.gradle.kts)
  [[ "$version" =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]] || { echo 'Invalid version'; exit 1; }
  if [[ "$mode" == release ]]; then
    IFS= read -r GREGYSCAN_STORE_PASSWORD
    [[ -n "$GREGYSCAN_STORE_PASSWORD" ]] || { echo 'Password cannot be empty'; exit 1; }
    export GREGYSCAN_STORE_PASSWORD
    bash gradlew --no-daemon --max-workers=2 testInternalDebugUnitTest lintGithubRelease assembleGithubRelease
    unset GREGYSCAN_STORE_PASSWORD
    apk=app/build/outputs/apk/github/release/app-github-release.apk
    test -f "$apk"
    /opt/android-sdk/build-tools/36.0.0/apksigner verify --verbose "$apk"
    output="dist/GregyScan-${version}.apk"
    mkdir -p dist
    if [[ -f app/build/outputs/mapping/githubRelease/mapping.txt ]]; then
      cp app/build/outputs/mapping/githubRelease/mapping.txt "dist/GregyScan-${version}-mapping.txt"
    fi
  elif [[ "$mode" == debug ]]; then
    bash gradlew --no-daemon --max-workers=2 testInternalDebugUnitTest lintInternalDebug assembleInternalDebug
    apk=app/build/outputs/apk/internal/debug/app-internal-debug.apk
    test -f "$apk"
    output="dist/GregyScan-${version}-debug.apk"
    mkdir -p dist
  else
    exit 2
  fi
  cp "$apk" "$output"
  sha256sum "$output" > "${output}.sha256"
  ls -lh "$output"
  exit
fi

mode="${1:-}"
[[ "$mode" == release || "$mode" == debug ]] || { echo 'Usage: bash build-apk.sh release|debug'; exit 2; }
cd -- "$(dirname -- "${BASH_SOURCE[0]}")"
test -f app/build.gradle.kts
mkdir -p .docker-home
sudo -v
args=(run --rm --user "$(id -u):$(id -g)" --cap-drop=ALL --security-opt=no-new-privileges
  --mount "type=bind,src=$PWD,dst=/workspace"
  -e HOME=/workspace/.docker-home -e GRADLE_USER_HOME=/workspace/.docker-home/.gradle
  -e JAVA_TOOL_OPTIONS=-Duser.home=/workspace/.docker-home)
if [[ "$mode" == release ]]; then
  signing_dir="$(cd .. && pwd)/signing"
  test -f "$signing_dir/gregyscan-release.jks" || { echo 'Missing signing/gregyscan-release.jks next to project directory'; exit 1; }
  IFS= read -r -s -p 'Geslo podpisnega kljuca GregyScan: ' signing_password
  printf '\n'
  trap 'unset signing_password' EXIT
  printf '%s\n' "$signing_password" | sudo docker "${args[@]}" -i --mount "type=bind,src=$signing_dir,dst=/signing,readonly" seliascan-builder:1.8.2 bash /workspace/build-apk.sh --container release
else
  sudo docker "${args[@]}" seliascan-builder:1.8.2 bash /workspace/build-apk.sh --container debug
fi
