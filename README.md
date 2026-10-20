<div align="center">
<img alt="Identixia" src="https://raw.githubusercontent.com/identixia-IDV/identixia-assets/main/brand/logo.png" width="320"/>

<a href="https://identixia.com"><img src="https://img.shields.io/badge/Website-0F766E?style=for-the-badge&logo=googlechrome&logoColor=white" alt="Website" /></a>
<a href="https://docs.identixia.com"><img src="https://img.shields.io/badge/Docs-0F766E?style=for-the-badge&logo=gitbook&logoColor=white" alt="Docs" /></a>
<a href="https://huggingface.co/Identixia"><img src="https://img.shields.io/badge/HuggingFace-FFD21E?style=for-the-badge&logo=huggingface&logoColor=black" alt="Hugging Face" /></a>
<a href="https://hub.docker.com/u/identixia"><img src="https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white" alt="Docker Hub" /></a>
<a href="https://playground.identixia.com/"><img src="https://img.shields.io/badge/Playground-0F766E?style=for-the-badge&logo=cloudplayground&logoColor=white" alt="Playground" /></a>
</div>

<div align="center">

# <img src="https://cdn.simpleicons.org/flutter/02569B" width="32" height="32" alt="" /> Face Recognition SDK for Flutter — Plugin and Sample App | Identixia

</div>

Integrate **face recognition and face matching** with the **Identixia Flutter SDK**. This repository provides a Flutter plugin for Android and iOS for face detection, face template extraction, and face matching. Face templates are numerical representations used to compare faces. Enroll faces in a local gallery and search for a match with one-to-many (1:N) identification. This recognition-only sample does not include face liveness checks.

Use the sample as a starting point for biometric identity verification, face-based access control, and customer onboarding. Processing runs on the device; images are not sent to the Identixia cloud.

Package: `face_recognition_sdk`. Model packs: `recognition-common.xdb`, `recognition.xdb`, `recognition-attr.xdb`, `recognition-quality.xdb` (no liveness packs)

<p><img src="https://img.shields.io/badge/On-device-0F766E?style=flat-square" alt="On-device" /> <img src="https://img.shields.io/badge/1%3AN%20identification-0F766E?style=flat-square" alt="1:N" /> <img src="https://img.shields.io/badge/Recognition--only-5A6573?style=flat-square" alt="Recognition-only" /> <img src="https://img.shields.io/badge/Android%20%2B%20iOS-0F766E?style=flat-square" alt="Android + iOS" /> <img src="https://img.shields.io/badge/Plugin-5A6573?style=flat-square" alt="Plugin" /></p>

> For setup, integration, and API guides, see the [Face Recognition SDK documentation for Flutter](https://docs.identixia.com). This page covers the sample repository.

## <img src="https://api.iconify.design/lucide/clipboard-list.svg?color=%230F766E" width="24" height="24" alt="" /> SDK overview

The sample includes a demo license. Your own application requires a key issued for its application identifier.

| Topic | Basic information |
| --- | --- |
| **Product** | On-device **face recognition** Flutter plugin |
| **Modes** | Enroll · Identify · Capture · Attribute · Identity |
| **Packs** | `recognition-common.xdb`, `recognition.xdb`, `recognition-attr.xdb`, `recognition-quality.xdb` (no liveness packs) |
| **Runtime** | Local example engines, or the `v1.0.0` GitHub Release when missing |
| **Demo id** | `com.identixia.facerecognition` / `com.identixia.facerecognition.app` |
| **Tools** | Physical **arm64** Android / iPhone |
| **Privacy** | Processing stays on device — no Identixia cloud |

---

## <img src="https://api.iconify.design/lucide/terminal.svg?color=%230F766E" width="24" height="24" alt="" /> Quick start

Choose the instructions for your device below. Run the Android and iOS steps separately; iOS builds require a Mac.

### <img src="https://img.shields.io/badge/-1-0F766E?style=for-the-badge" alt="" /> Clone

```bash
git clone https://github.com/identixia-IDV/FaceRecognition-Flutter.git
cd FaceRecognition-Flutter
```

Download [`libfacerecognitionsdk.rar`](https://github.com/identixia-IDV/FaceRecognition-Android/releases/tag/runtime) from the [FaceRecognition-Android Releases](https://github.com/identixia-IDV/FaceRecognition-Android/releases/tag/runtime). Extract it into `example/android/libfacerecognitionsdk/`. The files should sit in that folder, not inside an extra directory.

Download [`facerecognition.zip`](https://github.com/identixia-IDV/FaceRecognition-iOS/releases/tag/runtime) from the [FaceRecognition-iOS Releases](https://github.com/identixia-IDV/FaceRecognition-iOS/releases/tag/runtime). Unzip it into `ios/Frameworks/`. The files should sit in that folder, not inside an extra directory.

### Android

Use a physical **arm64** Android phone with USB debugging on. Flutter 3.44 or newer. The camera sample does not run on an emulator.

From the repository root:

```bash
dart run tool/bootstrap.dart
cd example
flutter devices
flutter run -d android
```

`flutter devices` prints the id of each connected phone. When more than one Android device is listed, pass that id instead of `android`.

### iOS

Use a Mac with Xcode, CocoaPods, and a physical **iPhone**. The camera sample does not run in the Simulator.

From the repository root:

```bash
dart run tool/bootstrap.dart
cd example
cd ios && pod install && cd ..
flutter devices
flutter run -d ios
```

When more than one iPhone is listed, pass that device id instead of `ios`.

### <img src="https://img.shields.io/badge/-2-0F766E?style=for-the-badge" alt="" /> Activate / license

1. Copy the id of your own app. On Android this is the application id. On iOS this is the bundle id. The sample id is `com.identixia.facerecognition`, `com.identixia.facerecognition.app`.
2. Email that id and the product name to [contact@identixia.com](mailto:contact@identixia.com).
3. Replace the demo key in `example/lib/core/constants/license.dart` with the key you receive.
4. Rebuild, then continue with the next step.

### <img src="https://img.shields.io/badge/-3-0F766E?style=for-the-badge" alt="" /> First capture

Wait for the Home screen to show **Ready**, then select **Enroll**, **Identify**, **Capture**, **Attribute**, or **Identity**.

---

## <img src="https://api.iconify.design/lucide/list-checks.svg?color=%230F766E" width="24" height="24" alt="" /> Features

| Capability | What it does |
| --- | --- |
| <img src="https://api.iconify.design/lucide/user-plus.svg?color=%230F766E" width="16" height="16" alt="" /> Enroll | Save numerical representations of captured faces in a gallery on the device |
| <img src="https://api.iconify.design/lucide/users.svg?color=%230F766E" width="16" height="16" alt="" /> Identify (1:N) | Compare a captured face with all saved faces to find the closest match (one-to-many identification) |
| <img src="https://api.iconify.design/lucide/aperture.svg?color=%230F766E" width="16" height="16" alt="" /> Capture | Guided still capture with quality feedback |
| <img src="https://api.iconify.design/lucide/sliders.svg?color=%230F766E" width="16" height="16" alt="" /> Attribute | Estimate age, gender, and facial expression when these features are enabled |
| <img src="https://api.iconify.design/lucide/fingerprint.svg?color=%230F766E" width="16" height="16" alt="" /> Templates | Create face templates and compare them to measure similarity |

## <img src="https://api.iconify.design/lucide/pc-case.svg?color=%230F766E" width="24" height="24" alt="" /> System requirements

| | |
| --- | --- |
| Devices | Physical **arm64** Android and/or **iPhone** |
| Package | `face_recognition_sdk` |
| Demo Android id | `com.identixia.facerecognition` |
| Demo iOS id | `com.identixia.facerecognition.app` |
| Runtimes | Local example engines, or the `v1.0.0` GitHub Release when they are missing |

---

## <img src="https://api.iconify.design/lucide/package.svg?color=%230F766E" width="24" height="24" alt="" /> SDK installation

Download [`libfacerecognitionsdk.rar`](https://github.com/identixia-IDV/FaceRecognition-Android/releases/tag/runtime) from the [FaceRecognition-Android Releases](https://github.com/identixia-IDV/FaceRecognition-Android/releases/tag/runtime). Extract it into `example/android/libfacerecognitionsdk/`. The files should sit in that folder, not inside an extra directory.

Download [`facerecognition.zip`](https://github.com/identixia-IDV/FaceRecognition-iOS/releases/tag/runtime) from the [FaceRecognition-iOS Releases](https://github.com/identixia-IDV/FaceRecognition-iOS/releases/tag/runtime). Unzip it into `ios/Frameworks/`. The files should sit in that folder, not inside an extra directory.

---

## <img src="https://api.iconify.design/lucide/rocket.svg?color=%230F766E" width="24" height="24" alt="" /> Run

Start in the repository root and follow the commands for your target platform. These commands are also listed in [Quick start](#-quick-start).

**Android** — physical arm64 phone, USB debugging on:

```bash
dart run tool/bootstrap.dart
cd example
flutter devices
flutter run -d android
```

**iOS** — Mac, Xcode, CocoaPods, physical iPhone (not the Simulator):

```bash
dart run tool/bootstrap.dart
cd example
cd ios && pod install && cd ..
flutter devices
flutter run -d ios
```

---

## <img src="https://api.iconify.design/lucide/key-round.svg?color=%230F766E" width="24" height="24" alt="" /> SDK license and activation

1. Run the sample with the bundled key and the sample id below.
2. For your own app, email [contact@identixia.com](mailto:contact@identixia.com) with the platform, your application id or bundle id, and the features you need.
3. Put the key you receive in the same place as the demo key.
4. Rebuild. Activation runs before SDK init. If it fails, the key does not match that id.

Sample id:

- `com.identixia.facerecognition`
- `com.identixia.facerecognition.app`

Set the key, then activate:

https://github.com/identixia-IDV/FaceRecognition-Flutter/blob/db39abf718d0e1371974f3d1cac5c5aa9b2173ca/example/lib/core/constants/license.dart#L14-L26

https://github.com/identixia-IDV/FaceRecognition-Flutter/blob/db39abf718d0e1371974f3d1cac5c5aa9b2173ca/example/lib/services/sdk_service.dart#L43-L43

## <img src="https://api.iconify.design/lucide/images.svg?color=%230F766E" width="24" height="24" alt="" /> Screenshots

<p align="center">
<img src="https://raw.githubusercontent.com/identixia-IDV/identixia-assets/main/screenshots/face-recognition/android/home.png" width="160" alt="Home" />
<img src="https://raw.githubusercontent.com/identixia-IDV/identixia-assets/main/screenshots/face-recognition/android/capture.png" width="160" alt="Capture" />
<img src="https://raw.githubusercontent.com/identixia-IDV/identixia-assets/main/screenshots/face-recognition/android/enroll.png" width="160" alt="Enroll" />
<img src="https://raw.githubusercontent.com/identixia-IDV/identixia-assets/main/screenshots/face-recognition/android/identify.png" width="160" alt="Identify" />
</p>

## <img src="https://api.iconify.design/lucide/braces.svg?color=%230F766E" width="24" height="24" alt="" /> API

The following SDK methods are used by the sample and can also be called from your application.

| API | Purpose |
| --- | --- |
| `activate(license)` then `init()` | Activate the license, then initialize the engine. Run these calls in order on one background thread. |
| `getLicenseStatus()` | Check the license status and enabled features before opening the camera. |
| `detect` / `faceAttribute` / `landmarks` | Detect faces in an image and return facial attributes and landmark coordinates. |
| `templateExtraction` / `similarity` | Create a numerical representation of a face and compare two faces to obtain a similarity score. |
| `enroll` / `bestMatch` | Save faces in a local gallery and search it for the closest match. |
| Liveness | Not included. A missing score is not a pass. |

Keep camera preview updates on the UI thread. Run SDK operations sequentially on a single background thread; the engine does not support simultaneous calls.

---

## <img src="https://api.iconify.design/lucide/layers.svg?color=%230F766E" width="24" height="24" alt="" /> SDKs for other platforms

| | Platform | Repo |
| --- | --- | --- |
| <img src="https://cdn.simpleicons.org/android/3DDC84" width="18" height="18" alt="" /> | Android | [FaceRecognition-Android](https://github.com/identixia-IDV/FaceRecognition-Android) |
| <img src="https://cdn.simpleicons.org/apple/000000" width="18" height="18" alt="" /> | iOS | [FaceRecognition-iOS](https://github.com/identixia-IDV/FaceRecognition-iOS) |
| <img src="https://cdn.simpleicons.org/flutter/02569B" width="18" height="18" alt="" /> | Flutter | [FaceRecognition-Flutter](https://github.com/identixia-IDV/FaceRecognition-Flutter) |
| <img src="https://cdn.simpleicons.org/react/61DAFB" width="18" height="18" alt="" /> | React Native | [FaceRecognition-React-Native](https://github.com/identixia-IDV/FaceRecognition-React-Native) |
| <img src="https://cdn.simpleicons.org/ionic/3880FF" width="18" height="18" alt="" /> | Ionic Capacitor | [FaceRecognition-Ionic-Capacitor](https://github.com/identixia-IDV/FaceRecognition-Ionic-Capacitor) |
| <img src="https://cdn.simpleicons.org/apachecordova/E8E8E8" width="18" height="18" alt="" /> | Ionic Cordova | [FaceRecognition-Ionic-Cordova](https://github.com/identixia-IDV/FaceRecognition-Ionic-Cordova) |
| <img src="https://cdn.simpleicons.org/windows/0078D4" width="18" height="18" alt="" /> | Windows | [FaceRecognition-Windows](https://github.com/identixia-IDV/FaceRecognition-Windows) |
| <img src="https://cdn.simpleicons.org/docker/2496ED" width="18" height="18" alt="" /> | Linux / Docker | [FaceRecognition-Docker](https://github.com/identixia-IDV/FaceRecognition-Docker) |

---

## <img src="https://api.iconify.design/lucide/mail.svg?color=%230F766E" width="24" height="24" alt="" /> Contact

<div align="center">

<a href="mailto:contact@identixia.com"><img alt="Email contact@identixia.com" src="https://img.shields.io/badge/Email-contact%40identixia.com-0F766E?style=for-the-badge&logo=gmail&logoColor=white" /></a>
<a href="https://wa.me/17018854218"><img alt="WhatsApp +1 (701) 885-4218" src="https://img.shields.io/badge/WhatsApp-%2B1_(701)_885--4218-25D366?style=for-the-badge&logo=whatsapp&logoColor=white" /></a>
<a href="https://t.me/identixia"><img alt="Telegram @identixia" src="https://img.shields.io/badge/Telegram-%40identixia-26A5E4?style=for-the-badge&logo=telegram&logoColor=white" /></a>

</div>

---
