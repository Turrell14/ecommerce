
// ignore_for_file: non_constant_identifier_names

import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;


 import 'firebase_options.dart';

 await Firebase.initializeApp(
   options: DefaultFirebaseOptions.currentPlatform,


 );
 ```
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
    apiKey: 'AIzaSyA4l7I2BcAy5WJORv-NhCPEzBuKLZHA6es',
    appId: '1:15998916418:web:f865c939dc48e1e87ddadb',
    messagingSenderId: '15998916418',
    projectId: 'authentic-8fe3e',
    authDomain: 'authentic-8fe3e.firebaseapp.com',
    storageBucket: 'authentic-8fe3e.appspot.com',
    measurementId: 'G-HMM0CCQD3C',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDI_1eOEb_py1vfzc7nBJBx-Lt4cATdjbw',
    appId: '1:15998916418:android:886c8264aaf836467ddadb',
    messagingSenderId: '15998916418',
    projectId: 'authentic-8fe3e',
    storageBucket: 'authentic-8fe3e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDwOHSPMmeso8Y5zvD5cS5onVywg5j-qrw',
    appId: '1:15998916418:ios:b94a7f68fa172d477ddadb',
    messagingSenderId: '15998916418',
    projectId: 'authentic-8fe3e',
    storageBucket: 'authentic-8fe3e.appspot.com',
    iosBundleId: 'com.example.ecommerce',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDwOHSPMmeso8Y5zvD5cS5onVywg5j-qrw',
    appId: '1:15998916418:ios:890d585d7ff80b907ddadb',
    messagingSenderId: '15998916418',
    projectId: 'authentic-8fe3e',
    storageBucket: 'authentic-8fe3e.appspot.com',
    iosBundleId: 'com.example.ecommerce.RunnerTests',
  );
}
