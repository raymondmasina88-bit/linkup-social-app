# LINK UP

A modern social media platform built with Flutter and Firebase for Android.

## Features
- Authentication (sign up, login, password reset)
- Profiles with cover and avatar support
- News feed with posts, reactions, comments, and sharing
- Stories, messaging, search, notifications and settings
- Admin dashboard with reports and moderation
- Firebase-ready Firestore and Storage architecture
- Optimized for low-bandwidth mobile usage

## Tech Stack
- Flutter
- Firebase Authentication
- Cloud Firestore
- Firebase Storage
- Firebase Cloud Messaging

## Setup Steps
1. Install Flutter SDK and Android Studio.
2. Create a Firebase project and enable Authentication, Firestore, Storage, and Cloud Messaging.
3. Register your Android app in Firebase.
4. Download `google-services.json` and place it in `android/app/`.
5. Replace the placeholder Firebase values in `lib/firebase_options.dart`.
6. Run:

```bash
flutter pub get
flutter run
```

## Note
This repository contains a production-ready architecture and Flutter codebase for a social app MVP. You still need to add your own Firebase project credentials before deploying.
