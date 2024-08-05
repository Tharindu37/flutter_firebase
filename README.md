# flutter_firebase

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

### Firebase Setup (FlutterFire CLI)
1. Install Nodejs
2. Install Firebase CLI
```
npm install -g firebase-tools
```
3. Install FlutterFire CLI
```
dart pub global activate flutterfire_cli
```
4. Create a Flutter Project
5. Create a new Firebase project
```
firebase login
```
```
flutterfire configure
```
6. Add firebase_core
```
flutter pub add firebase_core
```
7. Link Firebase
main.dart
```
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

void main(){
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    runApp(const MyApp())
}

class MyApp extends StatelessWidget{
    const MyApp({super.key});

    @override
    Widget build(BuildContext context)[
        return Container();
    ]
}
```
8. Run App


### Update Flutter Versions
```
flutter --version
```
```
flutter upgrade
```
### Create Flutter project
```
flutter create test_app
```