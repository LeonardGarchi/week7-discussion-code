// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBhf7gZmPexIhJZSZPzSAvx1nexy1gSe0o',
    appId: '1:74595411274:web:225718581efd3680590db3',
    messagingSenderId: '74595411274',
    projectId: 'cmsc23-todo-app-lagarchitorena',
    authDomain: 'cmsc23-todo-app-lagarchitorena.firebaseapp.com',
    storageBucket: 'cmsc23-todo-app-lagarchitorena.appspot.com',
    measurementId: 'G-65VSFV4WWM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCRx4r5xNThwv6C_CguU1YyjzmownFSm9s',
    appId: '1:74595411274:android:8ee2d21076ca174b590db3',
    messagingSenderId: '74595411274',
    projectId: 'cmsc23-todo-app-lagarchitorena',
    storageBucket: 'cmsc23-todo-app-lagarchitorena.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAINdC1QVTlZW2vTWYCRK_3YGc3JsUJ1uw',
    appId: '1:74595411274:ios:5746ab3de087bb30590db3',
    messagingSenderId: '74595411274',
    projectId: 'cmsc23-todo-app-lagarchitorena',
    storageBucket: 'cmsc23-todo-app-lagarchitorena.appspot.com',
    iosClientId: '74595411274-v868gofhobqtnpg67p4iqs9l3kf2ib08.apps.googleusercontent.com',
    iosBundleId: 'com.example.week7NetworkingDiscussion',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAINdC1QVTlZW2vTWYCRK_3YGc3JsUJ1uw',
    appId: '1:74595411274:ios:5746ab3de087bb30590db3',
    messagingSenderId: '74595411274',
    projectId: 'cmsc23-todo-app-lagarchitorena',
    storageBucket: 'cmsc23-todo-app-lagarchitorena.appspot.com',
    iosClientId: '74595411274-v868gofhobqtnpg67p4iqs9l3kf2ib08.apps.googleusercontent.com',
    iosBundleId: 'com.example.week7NetworkingDiscussion',
  );
}