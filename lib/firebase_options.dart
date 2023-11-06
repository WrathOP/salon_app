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
    apiKey: 'AIzaSyCglqlRkjjYoAOGaWqSPnjITYmEDPf5DoU',
    appId: '1:264437553349:web:b4a427a9b054f3676ab8ac',
    messagingSenderId: '264437553349',
    projectId: 'salon-app-6a029',
    authDomain: 'salon-app-6a029.firebaseapp.com',
    storageBucket: 'salon-app-6a029.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD89R3v4j9EbgFFJMESsyzojGI0luK9WsM',
    appId: '1:264437553349:android:1346fa671a9624df6ab8ac',
    messagingSenderId: '264437553349',
    projectId: 'salon-app-6a029',
    storageBucket: 'salon-app-6a029.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAmhc2VtQAoutm8Mk4yv23oOxFlRfVHLxg',
    appId: '1:264437553349:ios:24bb58449d493d0d6ab8ac',
    messagingSenderId: '264437553349',
    projectId: 'salon-app-6a029',
    storageBucket: 'salon-app-6a029.appspot.com',
    iosBundleId: 'com.example.salonApp',
  );
}