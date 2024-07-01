// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyAfH5Aw-rx8Uj6KPq2DLmKeo8waTiwUDus',
    appId: '1:735181735778:web:85183344df6ef63c520e3b',
    messagingSenderId: '735181735778',
    projectId: 'cs-cube-f8050',
    authDomain: 'cs-cube-f8050.firebaseapp.com',
    storageBucket: 'cs-cube-f8050.appspot.com',
    measurementId: 'G-3Q7R8ZDMMM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC-EVjEpvcAcEroPvfGfct8735zd6igXTo',
    appId: '1:735181735778:android:40820ef9ebe5d22d520e3b',
    messagingSenderId: '735181735778',
    projectId: 'cs-cube-f8050',
    storageBucket: 'cs-cube-f8050.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCbHtpDI-YSR6IsnRzv2da-GigBGwp1WoM',
    appId: '1:735181735778:ios:6f6f5e0bbdaad76d520e3b',
    messagingSenderId: '735181735778',
    projectId: 'cs-cube-f8050',
    storageBucket: 'cs-cube-f8050.appspot.com',
    iosBundleId: 'com.example.csCube',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCbHtpDI-YSR6IsnRzv2da-GigBGwp1WoM',
    appId: '1:735181735778:ios:6f6f5e0bbdaad76d520e3b',
    messagingSenderId: '735181735778',
    projectId: 'cs-cube-f8050',
    storageBucket: 'cs-cube-f8050.appspot.com',
    iosBundleId: 'com.example.csCube',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAfH5Aw-rx8Uj6KPq2DLmKeo8waTiwUDus',
    appId: '1:735181735778:web:82311da52ae4b446520e3b',
    messagingSenderId: '735181735778',
    projectId: 'cs-cube-f8050',
    authDomain: 'cs-cube-f8050.firebaseapp.com',
    storageBucket: 'cs-cube-f8050.appspot.com',
    measurementId: 'G-EWYVZ8KP8G',
  );
}
