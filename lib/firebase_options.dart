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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCfmIat7i_LBhOiA0CWNDTS8r4okofdR88',
    appId: '1:1040954544535:web:a0128cd00c02a1dcb9f4d2',
    messagingSenderId: '1040954544535',
    projectId: 'shivamfirebase',
    authDomain: 'shivamfirebase.firebaseapp.com',
    storageBucket: 'shivamfirebase.appspot.com',
    measurementId: 'G-EZ2M8LKTPJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBJiccQYrhy-G-u_RN9XjIiuBn9u9-__9c',
    appId: '1:1040954544535:android:58dd55ea03efdc0bb9f4d2',
    messagingSenderId: '1040954544535',
    projectId: 'shivamfirebase',
    storageBucket: 'shivamfirebase.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDLLVlnXLb3QnpKL7cT4G-aoCWv4X6gX2c',
    appId: '1:1040954544535:ios:3288c83f61ae31b2b9f4d2',
    messagingSenderId: '1040954544535',
    projectId: 'shivamfirebase',
    storageBucket: 'shivamfirebase.appspot.com',
    iosClientId: '1040954544535-ltn628sq0chlr7qsj9e5lndgl9cpvrnn.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterTraining',
  );
}