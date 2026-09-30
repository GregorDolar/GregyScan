# GregyScan

**Scan. Save. Done.**

GregyScan is a free and open-source Android document scanner focused on a simple, fast and reliable workflow from scanning a document to saving, sharing or printing the final result.

The project is currently developed and maintained by **Gregor Dolar**.

GregyScan continues the development of the open-source ScanIt / SeliaScan project. Original authorship, historical licensing information and third-party attribution are preserved in the repository.

---

## Current release

### GregyScan 1.0.0

The current stable release is **v1.0.0**.

**Download:**

https://github.com/GregorDolar/GregyScan/releases/latest

The APK can be installed manually on a compatible Android device.

GregyScan supports **Android 10 and newer**.

---

## Why GregyScan exists

Scanning and sending a document should not require navigating complicated file managers, export dialogs or cloud services.

Open GregyScan, scan one or more pages, review the result and then save, share or print the document.

The goal is a clean workflow:

**Scan → review → save → share**

---

## Features

### Document scanning

- Google ML Kit Document Scanner
- Automatic page detection
- Automatic capture
- Crop and rotation
- Scanner filters
- Shadow removal and cleanup
- Single-page and multi-page scanning
- High-resolution document processing

### PDF and image output

- PDF creation
- JPEG export
- PNG export
- Original image export
- Configurable PDF size
- Custom PDF size targets
- Configurable image size and format
- Save to Downloads or a selected folder
- Save images to Gallery

### Document management

- Recent scans dashboard
- Multi-page document browsing
- Full-screen zoomable document preview
- Rename PDF and image files
- Change output folder
- Re-create deleted output files
- Explicit deletion of saved documents

### Document actions

- OCR text extraction
- Export recognized text
- QR code detection
- Barcode detection
- Read recognized text aloud
- Smart cleanup
- Manual cleanup
- Manual redaction
- Safe Share tools

### Signatures and stamps

GregyScan supports reusable visual signatures and stamps.

They can be:

- drawn
- imported
- scanned
- moved directly on the document
- resized
- rotated
- positioned manually

Visual signatures and stamps are image annotations. They are **not cryptographic digital signatures** and do not verify identity or document authenticity.

### Sharing and printing

- Android Sharesheet
- Share PDF
- Share images
- Configurable email subject and message
- Android system printing
- Page-range printing

---

## Languages

GregyScan includes multiple interface languages, including:

- Slovenian
- English
- Czech
- German
- Spanish
- Simplified Chinese

The application can follow the Android system language or use a language selected in Settings.

---

## Privacy

GregyScan is designed around local document processing.

Ordinary scanning, PDF creation, OCR, barcode detection, document cleanup and redaction are performed on the device.

GregyScan does **not** operate a GregyScan cloud document service and does not upload scanned documents to a GregyScan-operated server.

Google Play services and Google ML Kit are used for document scanning and some recognition functionality. Required ML Kit modules may be downloaded by Google Play services before first use.

Sharing and printing transfer a document only after the user explicitly chooses another application or service.

Optional text-to-speech functionality sends recognized text to the Android speech engine selected on the device. Depending on that engine, speech processing may occur online.

For more information see:

- [Privacy Policy](PRIVACY.md)
- [Security Policy](SECURITY.md)
- [Third-Party Notices](THIRD_PARTY_NOTICES.md)

---

## Permissions and storage

GregyScan uses Android's modern scoped-storage mechanisms.

The application does not require broad access to all files on the device.

Saved documents can use:

- MediaStore
- Android Storage Access Framework
- application-managed temporary storage

Recent scans are temporary working copies and are not intended to replace a permanent document archive.

Files explicitly saved by the user remain in their selected destination until deleted.

---

## Requirements

Current public builds require:

- Android 10 or newer
- `minSdk 29`
- `targetSdk 36`
- Google Play services for the ML Kit Document Scanner
- At least approximately 1.7 GB total device RAM as required by ML Kit Document Scanner
- Internet connectivity when Google Play services needs to download or update scanner or recognition modules

---

## How GregyScan works

```mermaid
flowchart LR
    A["Open GregyScan"] --> B["ML Kit scanner"]
    B --> C["Local working copy"]
    C --> D["PDF / Gallery"]
    C --> E["Share / Print"]
    C --> F["Recent scans"]
    C --> G["Local document tools"]
