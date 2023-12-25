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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB43T2xX0zZ9LeQOuRQZRIUEcDQUbUBc-8',
    appId: '1:455578490556:android:eeb62591798a0e5b9262b9',
    messagingSenderId: '455578490556',
    projectId: 'chatapp-500fc',
    databaseURL: 'https://chatapp-500fc-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'chatapp-500fc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDXhsbkrrAKCRD1dTH9l4QLiS5NSQZjugU',
    appId: '1:455578490556:ios:e0ebf34407ec4bb69262b9',
    messagingSenderId: '455578490556',
    projectId: 'chatapp-500fc',
    databaseURL: 'https://chatapp-500fc-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'chatapp-500fc.appspot.com',
    iosBundleId: 'com.example.chatAppFlutter',
  );
}