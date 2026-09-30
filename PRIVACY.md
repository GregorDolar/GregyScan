# Privacy Policy

**GregyScan**

Last updated: 2026-09-30

GregyScan is a free and open-source Android document scanner currently developed and maintained by **Gregor Dolar**.

This Privacy Policy describes how the current public GitHub release of GregyScan handles documents, application data and third-party services.

---

## Summary

GregyScan is designed around local document processing.

The current public GitHub release:

- does not require a GregyScan account
- does not contain advertising
- does not contain Google Play Billing
- does not contain first-party analytics
- does not operate a GregyScan cloud document service
- does not upload scanned documents to a GregyScan-operated server
- does not sell user data

The public GitHub build also removes the Android `INTERNET` permission from the application itself.

---

## Document processing

Normal GregyScan document operations are performed locally on the Android device.

These include:

- document scanning
- PDF creation
- image creation
- OCR text recognition
- barcode and QR code recognition
- document cleanup
- redaction
- signatures and stamps
- document preview
- document export

GregyScan does not send document pages, OCR text, saved documents, signatures or stamps to a server operated by GregyScan or its maintainer.

---

## Google ML Kit and Google Play services

GregyScan uses Google ML Kit and Google Play services for features including:

- document scanning
- text recognition
- barcode and QR code recognition
- face detection used by applicable document tools

Some ML Kit components may be provided or updated by Google Play services.

Google Play services may process technical, diagnostic or usage information according to Google's own privacy policies and service terms.

GregyScan does not control Google's processing of information performed independently by Google Play services.

For information about Google ML Kit privacy and data handling, see Google's official documentation:

https://developers.google.com/ml-kit/terms

---

## Internet access

The current public GitHub build of GregyScan removes the Android `INTERNET` permission from the GregyScan application.

This means GregyScan itself cannot directly open arbitrary network connections.

Google Play services are separate system components and may use their own network access when downloading or updating ML Kit components or performing functionality provided by Google services.

---

## Temporary scan data

During document processing, GregyScan may create temporary working copies in application-private storage.

These temporary files are used for operations such as:

- previewing scans
- creating PDFs
- applying document tools
- creating output files
- displaying recent scans

Recent scans are working copies and should not be considered a permanent document archive.

Users should explicitly save documents they want to retain.

---

## Saved documents

PDFs and images are stored only as a result of user actions and application settings.

Depending on the selected destination, files may be saved using Android facilities such as:

- MediaStore
- the Android Storage Access Framework
- user-selected folders
- the device Gallery

Files saved outside GregyScan's private application storage remain under the control of Android, the selected storage provider and the user.

Deleting GregyScan or clearing its application data does not necessarily delete files that were previously exported to external storage.

---

## Cloud storage and external storage providers

If the user selects a cloud-backed storage location, Gallery synchronization service, backup service or another external storage provider, that provider may upload or process the saved document.

Such processing is controlled by the selected third-party service and is subject to that provider's privacy policy.

GregyScan does not control third-party storage providers.

---

## Sharing

GregyScan shares a document only after the user explicitly chooses a sharing action.

Android then allows the user to select another compatible application or service.

The selected application may receive the shared document or image and process it according to its own privacy policy.

GregyScan does not control how another application handles information after the user shares it.

---

## Printing

When the user chooses to print a document, GregyScan passes the document to Android's printing system.

The selected print service may process the document according to the policies of that service or printer provider.

---

## Text-to-speech

GregyScan can provide optional read-aloud functionality.

When the user activates this feature, recognized text may be passed to the Android text-to-speech engine selected on the device.

Some speech engines and voices operate locally, while others may use online services.

GregyScan cannot guarantee offline processing by a third-party speech engine.

The privacy policy of the selected text-to-speech provider applies to its processing.

---

## Signatures and stamps

Reusable signature and stamp templates may be stored in GregyScan's private application storage.

These templates remain on the device unless removed by the user, application data is cleared or GregyScan is uninstalled.

Signatures and stamps applied to an exported document become part of that exported document.

Deleting a stored template does not remove a signature or stamp that has already been embedded into an exported file.

Visual signatures and stamps in GregyScan are image annotations and are not cryptographic digital signatures.

---

## Android backup

GregyScan is designed so that application-private document data and settings are not relied upon as permanent document storage.

Users should keep important documents in a permanent location of their choice.

External files may still be backed up or synchronized by Android, a device manufacturer, a Gallery application, a storage provider or another service selected by the user.

Those services operate independently of GregyScan.

---

## Advertising and payments

The current public GitHub release of GregyScan does not include:

- advertising SDKs
- Google Mobile Ads
- Google User Messaging Platform
- Google Play Billing
- subscriptions
- in-app purchases
- paid feature unlocking

Support through Buy Me a Coffee is completely optional and takes place outside the GregyScan application.

Supporting GregyScan does not unlock application features and does not change support priority.

---

## Analytics and tracking

GregyScan does not operate a first-party analytics or tracking service.

The current public GitHub release does not intentionally transmit document contents or user activity to an analytics service operated by the GregyScan maintainer.

Third-party system components such as Google Play services may independently process diagnostic or usage information according to their own policies.

---

## Personal information

GregyScan does not require registration and does not maintain a GregyScan user account database.

The maintainer does not receive scanned documents, OCR content, signatures, stamps or saved files through normal application use.

If a user voluntarily contacts the maintainer, opens a GitHub issue or otherwise provides information outside the application, that information is processed only as necessary to respond to the communication or manage the project.

Do not submit private documents, passwords, credentials, API keys or other sensitive information in public GitHub issues.

---

## Children's privacy

GregyScan does not knowingly operate a service intended to collect personal information from children.

Because GregyScan does not require an account and does not operate its own document-processing server, the maintainer does not intentionally collect age information through normal application use.

---

## Open-source software

GregyScan is open-source software.

Its source code can be inspected here:

https://github.com/GregorDolar/GregyScan

Third-party software and licensing information is documented in:

- [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md)
- [LICENSE](LICENSE)
- [LICENSES](LICENSES)

---

## Changes to this Privacy Policy

This Privacy Policy may be updated when GregyScan features, dependencies or data-handling behavior change.

The current version is maintained in the GregyScan GitHub repository.

Changes are recorded through Git version history.

---

## Contact

GregyScan is currently maintained by:

**Gregor Dolar**

GitHub:

https://github.com/GregorDolar

Website:

https://gregordolar.com

For privacy-related questions:

**gregor.dolar@gmail.com**

Please do not send private scanned documents, passwords, credentials or other sensitive information by email.
