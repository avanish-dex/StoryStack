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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyD7LT4IkgdUlh7703xh1hsrUY6zxkhXa7c',
    appId: '1:1086959685144:web:4cc76b55e7747f934bfd6d',
    messagingSenderId: '1086959685144',
    projectId: 'storystack-f54d5',
    authDomain: 'storystack-f54d5.firebaseapp.com',
    storageBucket: 'storystack-f54d5.appspot.com',
    measurementId: 'G-VFB3RL5PLT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAFcPIIJchM1kfbsjeCgBdbw_7qW2clDV8',
    appId: '1:1086959685144:android:ae01427da0d4b58e4bfd6d',
    messagingSenderId: '1086959685144',
    projectId: 'storystack-f54d5',
    storageBucket: 'storystack-f54d5.appspot.com',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD7LT4IkgdUlh7703xh1hsrUY6zxkhXa7c',
    appId: '1:1086959685144:web:aa2beb8e65891b5d4bfd6d',
    messagingSenderId: '1086959685144',
    projectId: 'storystack-f54d5',
    authDomain: 'storystack-f54d5.firebaseapp.com',
    storageBucket: 'storystack-f54d5.appspot.com',
    measurementId: 'G-K7DES8WC1V',
  );
}
