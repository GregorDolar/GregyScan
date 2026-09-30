# Third-party notices

GregyScan is based on earlier open-source work from ScanIt / SeliaScan. Original source code and third-party components retain their respective copyright notices, licenses and terms.

The `githubReleaseRuntimeClasspath` dependency graph was reviewed for **GregyScan 1.0.0** on **2026-09-30**.

Direct runtime dependencies include:

- Kotlin standard library 2.4.10
- AndroidX Activity Compose 1.13.0
- AndroidX Core KTX 1.19.0
- AndroidX ExifInterface 1.4.2
- AndroidX Compose Material 3 and other Compose components selected through Compose BOM 2026.08.00
- AndroidX Lifecycle ViewModel KTX 2.11.0
- Google Play services ML Kit Document Scanner 16.0.0
- Google Play services ML Kit Text Recognition 19.0.1
- Google Play services ML Kit Chinese Text Recognition 16.0.1
- Google Play services ML Kit Barcode Scanning 18.3.1
- Google Play services ML Kit Face Detection 17.1.0

The public GitHub edition of GregyScan does not package Google Mobile Ads, Google User Messaging Platform, Google Play Billing or another monetization SDK.

---

## Apache License 2.0 components

Kotlin, KotlinX, JetBrains annotations, AndroidX, JSpecify, Guava `listenablefuture`, `javax.inject`, and open-source Google/Firebase transport and encoder components in the resolved dependency graph are distributed under the Apache License 2.0.

The complete Apache License 2.0 text is included here:

[LICENSES/Apache-2.0.txt](LICENSES/Apache-2.0.txt)

Copyright notices remain with their respective authors and contributors.

---

## Google ML Kit

GregyScan uses Google ML Kit components for functionality including:

- document scanning
- text recognition
- Chinese text recognition
- barcode and QR-code recognition
- face detection used by applicable document tools

These dependencies are subject to the applicable Google ML Kit and Google API terms.

ML Kit Terms of Service:

https://developers.google.com/ml-kit/terms

Google APIs Terms of Service:

https://developers.google.com/terms

Scanner UI, models and related resources may be delivered through Google Play services.

Required models or modules may be downloaded before first use.

GregyScan does not operate its own cloud document-processing service. Normal GregyScan document processing is designed to occur on the Android device unless the user explicitly exports, shares or otherwise sends data to another application or service.

---

## Trademarks

Android, Google Play, Google Play services and ML Kit are trademarks of Google LLC.

Kotlin is a trademark of the Kotlin Foundation.

Other product names, trademarks and registered trademarks belong to their respective owners.

Their inclusion in GregyScan does not imply endorsement, sponsorship or affiliation.

---

## Dependency accuracy

This file summarizes important direct runtime dependencies and licensing information for the current GregyScan release.

The exact dependency artifact and its accompanying license terms control if they differ from this summary.

Dependency versions may change in later GregyScan releases.

When dependencies are updated, this file should be reviewed and updated as necessary.

---

## Project licensing

For GregyScan source-code licensing and historical attribution, see:

- [LICENSE](LICENSE)
- [LICENSES](LICENSES)
- [HISTORICAL_MIT_RELEASES.md](HISTORICAL_MIT_RELEASES.md)
