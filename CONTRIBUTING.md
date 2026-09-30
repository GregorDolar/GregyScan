# Contributing to GregyScan

Thank you for your interest in contributing to **GregyScan**.

GregyScan is a free and open-source Android document scanner currently developed and maintained by **Gregor Dolar**.

Contributions that improve reliability, usability, accessibility, translations, documentation, testing, security or Android compatibility are welcome.

---

## Ways to contribute

You can contribute by:

- reporting bugs
- suggesting improvements
- proposing new features
- improving documentation
- improving translations
- writing or improving tests
- fixing bugs
- improving accessibility
- reviewing code
- submitting pull requests

---

## Before opening an issue

Please check whether a similar issue already exists:

https://github.com/GregorDolar/GregyScan/issues

When reporting a bug, include as much useful information as possible.

Recommended information:

- GregyScan version
- Android version
- device model
- clear steps to reproduce the problem
- expected behavior
- actual behavior
- screenshots when useful
- relevant logs when safe to share

Please do **not** upload:

- private scanned documents
- passwords
- credentials
- API keys
- access tokens
- signing keys
- private certificates
- other sensitive personal information

Use test data whenever possible.

---

## Feature requests

Feature suggestions are welcome.

Please describe:

- the problem you are trying to solve
- how the proposed feature would help
- how you expect the feature to behave
- whether there are existing Android applications with a similar workflow

Small, focused improvements are usually easier to review than large redesign proposals.

---

## Security issues

Do **not** report sensitive security vulnerabilities through a public GitHub issue.

Please follow:

[SECURITY.md](SECURITY.md)

Security reports can be sent privately to:

**gregor.dolar@gmail.com**

---

## Pull requests

Pull requests are welcome.

Before submitting a pull request:

1. Make sure the change has a clear purpose.
2. Keep the change as focused as possible.
3. Avoid unrelated formatting or refactoring.
4. Run the relevant tests.
5. Run Android lint where applicable.
6. Make sure no private information or credentials are included.
7. Describe what changed and why.

For larger changes, it is recommended to open an issue first so the approach can be discussed before significant work is done.

---

## Development setup

GregyScan is an Android project written primarily in Kotlin.

The project currently requires:

- JDK 17
- Android SDK 36
- Gradle Wrapper included in the repository

Clone the repository:

```bash
git clone https://github.com/GregorDolar/GregyScan.git
cd GregyScan
```

---

## Building

### Linux / WSL

Run unit tests:

```bash
./gradlew :app:testInternalDebugUnitTest
```

Run lint for the public GitHub release:

```bash
./gradlew :app:lintGithubRelease
```

Build the public GitHub release:

```bash
./gradlew :app:assembleGithubRelease
```

### Windows

```powershell
.\gradlew.bat :app:testInternalDebugUnitTest
.\gradlew.bat :app:lintGithubRelease
.\gradlew.bat :app:assembleGithubRelease
```

---

## Tests

Changes should include appropriate tests whenever practical.

Existing tests cover areas including:

- PDF generation
- document storage
- image export
- document actions
- redaction
- signatures and stamps
- Android compatibility
- accessibility contracts
- recent scans
- output handling

Before opening a pull request, run the tests relevant to your changes.

When possible, also run the complete unit-test suite.

---

## Code quality

Please try to follow the existing structure and conventions of the project.

In particular:

- keep changes focused
- avoid unnecessary dependencies
- avoid unnecessary permissions
- prefer Android platform APIs where appropriate
- preserve local-first document handling
- do not introduce network access without a clear reason and review
- preserve compatibility with supported Android versions
- consider accessibility and localization

---

## Privacy

Privacy-sensitive behavior must be considered carefully.

Changes should not silently introduce:

- analytics
- advertising
- remote document processing
- document uploads
- tracking
- unnecessary network access
- unnecessary Android permissions

Any change that affects data handling should also update the relevant documentation, especially:

- [PRIVACY.md](PRIVACY.md)
- [SECURITY.md](SECURITY.md)
- [README.md](README.md)

---

## Dependencies

New dependencies should be added only when they provide a clear benefit.

Before adding a dependency, consider:

- whether the Android platform already provides the required functionality
- maintenance status
- security history
- license compatibility
- application size
- privacy implications
- required permissions
- network behavior

Third-party dependency changes may require updates to:

[THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md)

---

## Translations

Translation improvements are welcome.

GregyScan currently includes interface resources for multiple languages.

When changing user-visible text:

- update the default English strings
- update translations where practical
- avoid changing string identifiers unnecessarily
- keep placeholders such as `%1$s` intact
- verify that formatting remains valid

Incomplete translations are preferable to incorrect translations.

---

## Documentation

Documentation contributions are welcome.

Useful improvements include:

- clearer installation instructions
- build documentation
- screenshots
- troubleshooting
- feature explanations
- privacy and security documentation
- accessibility information

Documentation should describe the actual current behavior of GregyScan.

---

## Commit messages

Use short and descriptive commit messages.

Examples:

```text
Fix PDF export failure
Improve Slovenian translation
Add test for recent scan deletion
Update privacy documentation
```

Avoid vague messages such as:

```text
changes
fix
update stuff
```

---

## Pull request description

A useful pull request description should explain:

- what changed
- why the change is needed
- how it was tested
- any user-visible impact
- any privacy, security or compatibility implications

Screenshots are helpful for user-interface changes.

---

## Licensing and attribution

By contributing to GregyScan, you agree that your contribution may be distributed under the applicable license terms of the repository.

GregyScan continues development based on earlier open-source work from **ScanIt / SeliaScan**.

Existing copyright, license and attribution notices must not be removed without a valid legal reason.

See:

- [LICENSE](LICENSE)
- [LICENSES](LICENSES)
- [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md)
- [HISTORICAL_MIT_RELEASES.md](HISTORICAL_MIT_RELEASES.md)

---

## Maintainer

GregyScan is currently maintained by:

**Gregor Dolar**

GitHub:

https://github.com/GregorDolar

Website:

https://gregordolar.com

Contact:

**gregor.dolar@gmail.com**

---

## Code of conduct

Please communicate respectfully and keep technical discussions focused on improving the project.

Harassment, personal attacks, spam and intentionally disruptive behavior are not acceptable.

---

Thank you for helping improve GregyScan.
