FROM eclipse-temurin:17-jdk-jammy

RUN apt-get update && apt-get install -y --no-install-recommends curl unzip ca-certificates \
    && rm -rf /var/lib/apt/lists/*

ENV ANDROID_HOME=/opt/android-sdk
ENV ANDROID_SDK_ROOT=/opt/android-sdk
ENV PATH="${PATH}:/opt/android-sdk/cmdline-tools/latest/bin:/opt/android-sdk/platform-tools"
ARG ACCEPT_ANDROID_LICENSES=no

RUN curl -fL --retry 3 https://dl.google.com/android/repository/commandlinetools-linux-15859902_latest.zip -o /tmp/android-tools.zip \
    && echo '4e4c464f145a7512b57d088ac6c278c03c9eea610886b35a5e0804e74eedf583  /tmp/android-tools.zip' | sha256sum -c - \
    && mkdir -p /opt/android-sdk/cmdline-tools \
    && unzip -q /tmp/android-tools.zip -d /opt/android-sdk/cmdline-tools \
    && mv /opt/android-sdk/cmdline-tools/cmdline-tools /opt/android-sdk/cmdline-tools/latest \
    && rm /tmp/android-tools.zip

RUN test "$ACCEPT_ANDROID_LICENSES" = yes \
    && (yes | sdkmanager --licenses) \
    && sdkmanager 'platforms;android-37.0' 'build-tools;36.0.0' 'platform-tools' \
    && chmod -R a+rwX /opt/android-sdk

WORKDIR /workspace
CMD ["bash", "gradlew", "--no-daemon", "--max-workers=2", "testInternalDebugUnitTest", "lintInternalDebug", "assembleInternalDebug"]
