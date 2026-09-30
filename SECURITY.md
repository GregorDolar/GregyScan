# Security Policy

GregyScan is a free and open-source Android document scanner currently developed and maintained by **Gregor Dolar**.

This document explains which versions receive security fixes, how to report vulnerabilities, and the main security boundaries of the current public GregyScan release.

---

## Supported versions

Security fixes are provided for the **latest published GregyScan release**.

| Version | Supported |
|---|---|
| Latest published release | Yes |
| Older releases | No |

Users are encouraged to update to the latest available release.

Current releases are available here:

https://github.com/GregorDolar/GregyScan/releases

---

## Reporting a vulnerability

Please **do not open a public GitHub issue** for a security vulnerability that could expose:

- scanned documents
- OCR text
- file URIs
- signatures or stamps
- credentials
- signing material
- device data
- private storage contents
- other sensitive information

If GitHub private vulnerability reporting is available for this repository, please use it.

Otherwise, security reports can be sent privately to:

**gregor.dolar@gmail.com**

Please use a subject such as:

**GregyScan Security Report**

---

## What to include in a security report

Please include:

- affected GregyScan version
- Android version
- device model, if relevant
- clear reproduction steps
- expected behavior
- actual behavior
- potential security impact
- the smallest safe proof of concept necessary to demonstrate the problem

Please **never send real private documents, passwords, API keys, credentials, signing keys or other sensitive personal information** unless absolutely necessary and previously agreed.

Test data should be used whenever possible.

---

## Responsible disclosure

Please allow reasonable time for a vulnerability to be investigated and corrected before publicly disclosing technical details that could put users at risk.

After a security issue has been fixed and a new release is available, public disclosure and technical discussion are welcome.

There is currently no bug bounty or paid vulnerability-reward program for GregyScan.

---

## Security model

GregyScan is designed primarily as an on-device document-processing application.

Normal operations such as:

- scanning
- PDF creation
- image creation
- OCR
- barcode and QR recognition
- redaction
- document cleanup
- signatures and stamps
- local document preview

are designed to operate locally on the Android device.

GregyScan does not operate a maintainer-controlled cloud document-processing service.

---

## Network boundaries

The current public GitHub build does not declare an application-owned Android `INTERNET` permission.

GregyScan itself therefore does not directly open arbitrary Internet connections.

Google Play services are separate Android system components and may use their own network access to provide or update functionality used by Google ML Kit.

This may include downloading scanner or recognition modules and processing diagnostic information according to Google's own terms and privacy policies.

---

## Document storage

GregyScan uses Android storage mechanisms designed to limit unnecessary access to user files.

These include:

- application-private storage
- MediaStore
- Android Storage Access Framework
- scoped content URIs
- FileProvider

GregyScan does not require broad access to all files on the device.

Temporary working copies may be stored in application-private storage while documents are being processed.

Users should save important documents to a permanent location of their choice.

---

## Sharing

Documents are exposed to another application only after the user explicitly selects a sharing action.

GregyScan uses Android's scoped content-sharing mechanisms instead of exposing unrestricted filesystem paths.

After a document is shared, the receiving application is responsible for its own handling of that data.

---

## OCR, barcode and detected content

OCR and barcode results may contain sensitive information.

GregyScan does not automatically open detected URLs or actions without user interaction.

Recognized or detected content should be treated as untrusted input.

Users should verify detected links, contact information, Wi-Fi credentials and other extracted content before acting on it.

---

## Signatures and stamps

Signatures and stamps in GregyScan are visual image annotations.

They are **not cryptographic digital signatures**.

They do not prove:

- identity
- authorization
- document authenticity
- integrity
- non-repudiation

Users should not rely on these visual elements as a substitute for a qualified or cryptographically verifiable digital signature.

---

## Backup and device transfer

GregyScan application-private data is not intended to serve as a permanent document archive.

Important documents should be explicitly saved outside temporary application working storage.

External files may still be synchronized or backed up by Android, the device manufacturer, Gallery applications, storage providers or other services selected by the user.

Those systems operate independently of GregyScan.

---

## Release signing

Production signing keys, keystores, passwords and signing properties are kept outside the public repository.

The repository must never contain:

- private signing keys
- keystores
- signing passwords
- access tokens
- API secrets
- private certificates

Files containing such information are excluded from Git where possible.

---

## Build and supply-chain security

GregyScan uses Gradle dependency verification and committed verification metadata to help detect unexpected dependency changes.

Dependencies are resolved only from approved repositories used by the project, including:

- Google Maven
- Maven Central
- Gradle Plugin Portal

GitHub Actions are used for automated validation of the project.

The repository includes automated checks covering areas such as:

- tests
- lint
- Android builds
- dependency verification
- release verification

Dependabot may propose dependency and GitHub Actions updates for review.

Automated tooling reduces risk but does not guarantee that the software is free of vulnerabilities.

---

## Third-party components

GregyScan depends on Android, Google Play services, Google ML Kit and other third-party software.

Security issues in those components may be outside the direct control of the GregyScan maintainer.

Users should keep:

- Android
- Google Play services
- device security updates

up to date.

Third-party licensing and dependency information is documented in:

- [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md)
- [LICENSE](LICENSE)
- [LICENSES](LICENSES)

---

## Public issue tracker

The public GitHub Issues tracker is appropriate for ordinary:

- bugs
- crashes
- feature requests
- usability problems
- non-sensitive technical questions

Issues can be opened here:

https://github.com/GregorDolar/GregyScan/issues

Do **not** use public Issues for vulnerabilities that could expose sensitive information or help an attacker compromise users.

---

## Maintainer

GregyScan is currently developed and maintained by:

**Gregor Dolar**

GitHub:

https://github.com/GregorDolar

Website:

https://gregordolar.com

Security contact:

**gregor.dolar@gmail.com**

---

## Security updates

Security-related changes may be delivered through normal GregyScan releases.

Users should use the latest published release whenever possible:

https://github.com/GregorDolar/GregyScan/releases/latest
