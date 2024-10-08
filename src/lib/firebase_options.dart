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
    apiKey: 'AIzaSyCu873_xty4TK6sTjMf8qFft0OAitny2FI',
    appId: '1:93364609718:web:e8e4506300a40cc179fc17',
    messagingSenderId: '93364609718',
    projectId: 'personance-b772a',
    authDomain: 'personance-b772a.firebaseapp.com',
    storageBucket: 'personance-b772a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDhPoxbFqGgdGuTMrBlXE4xEF8RU52ZwSA',
    appId: '1:93364609718:android:4de3f2ab3579f8ab79fc17',
    messagingSenderId: '93364609718',
    projectId: 'personance-b772a',
    storageBucket: 'personance-b772a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD1eqyqs_FgMf7-qx4e8y0tGTW5VzkbXTQ',
    appId: '1:93364609718:ios:11f4c946f6eff77f79fc17',
    messagingSenderId: '93364609718',
    projectId: 'personance-b772a',
    storageBucket: 'personance-b772a.appspot.com',
    iosBundleId: 'com.example.financialmng',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD1eqyqs_FgMf7-qx4e8y0tGTW5VzkbXTQ',
    appId: '1:93364609718:ios:11f4c946f6eff77f79fc17',
    messagingSenderId: '93364609718',
    projectId: 'personance-b772a',
    storageBucket: 'personance-b772a.appspot.com',
    iosBundleId: 'com.example.financialmng',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCu873_xty4TK6sTjMf8qFft0OAitny2FI',
    appId: '1:93364609718:web:491c35ff95fc4c1a79fc17',
    messagingSenderId: '93364609718',
    projectId: 'personance-b772a',
    authDomain: 'personance-b772a.firebaseapp.com',
    storageBucket: 'personance-b772a.appspot.com',
  );
}
