# Third-party notices

GregyScan is based on earlier open-source work from ScanIt / SeliaScan.
Original source code and third-party components retain their respective
copyright notices, licenses and terms.

The `githubReleaseRuntimeClasspath` dependency graph was reviewed for
GregyScan 1.0.0 on 2026-09-30. Direct runtime dependencies include:

- Kotlin standard library 2.4.10.
- AndroidX Activity Compose 1.13.0.
- AndroidX Core KTX 1.19.0.
- AndroidX ExifInterface 1.4.2.
- AndroidX Compose components selected through Compose BOM 2026.08.00.
- AndroidX Lifecycle ViewModel KTX 2.11.0.
- Google Play services ML Kit Document Scanner 16.0.0.
- Google Play services ML Kit Text Recognition 19.0.1.
- Google Play services ML Kit Chinese Text Recognition 16.0.1.
- Google Play services ML Kit Barcode Scanning 18.3.1.
- Google Play services ML Kit Face Detection 17.1.0.

The public GitHub edition of GregyScan does not package Google Mobile Ads,
Google User Messaging Platform, Google Play Billing, or another monetization
SDK.

## Apache License 2.0 components

Kotlin, KotlinX, JetBrains annotations, AndroidX, JSpecify, Guava
`listenablefuture`, `javax.inject`, and open-source Google/Firebase transport
and encoder components in the resolved dependency graph are distributed under
the Apache License 2.0.

The complete Apache License 2.0 text is included in:

`LICENSES/Apache-2.0.txt`

The complete MIT License applicable to the original source and GregyScan
portions is included in:

`LICENSES/MIT.txt`

Copyright notices remain with their respective authors and contributors.

## Google ML Kit

The ML Kit dependencies above are subject to the
[ML Kit Terms of Service](https://developers.google.com/ml-kit/terms) and
[Google APIs Terms of Service](https://developers.google.com/terms).

Scanner UI, models, and related resources may be delivered through Google Play
services. Required components or models may be downloaded before first use.

GregyScan does not operate its own cloud document-processing service.
Normal GregyScan document processing is designed to occur on the Android
device unless the user explicitly exports, shares, prints, or otherwise sends
data to another application or service.

Android, Google Play, Google Play services, and ML Kit are trademarks of Google
LLC. Kotlin is a trademark of the Kotlin Foundation. Other names and marks
belong to their respective owners. Their inclusion does not imply endorsement.

The exact dependency artifact and its accompanying license terms control if
they differ from this summary.

Dependency versions may change in later GregyScan releases. This notice should
be reviewed when dependencies are updated.