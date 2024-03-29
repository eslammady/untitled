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
    apiKey: 'AIzaSyDguj4zNKrYQCm5Jkuujeqyyq0mOUt9NwM',
    appId: '1:951367071223:web:701a4b2c1f944a8f0eeaf2',
    messagingSenderId: '951367071223',
    projectId: 'slu-app-17c34',
    authDomain: 'slu-app-17c34.firebaseapp.com',
    storageBucket: 'slu-app-17c34.appspot.com',
    measurementId: 'G-WTMQR3WJ94',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCRHcgJm_IOaAOUCMB8QCsoK-2J9AZ6jI4',
    appId: '1:951367071223:android:ce416a0fce59e4c70eeaf2',
    messagingSenderId: '951367071223',
    projectId: 'slu-app-17c34',
    storageBucket: 'slu-app-17c34.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBaDfy6zrpVJcwOUiYRFK8D472UlL7FIDs',
    appId: '1:951367071223:ios:5fb548dd861c6dd20eeaf2',
    messagingSenderId: '951367071223',
    projectId: 'slu-app-17c34',
    storageBucket: 'slu-app-17c34.appspot.com',
    iosClientId: '951367071223-afm80b1vr1ate7e8sh81nc950cnk4e1k.apps.googleusercontent.com',
    iosBundleId: 'com.example.untitled',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBaDfy6zrpVJcwOUiYRFK8D472UlL7FIDs',
    appId: '1:951367071223:ios:91a5e145e294bae50eeaf2',
    messagingSenderId: '951367071223',
    projectId: 'slu-app-17c34',
    storageBucket: 'slu-app-17c34.appspot.com',
    iosClientId: '951367071223-o5jdsp898ulgc4rkforl2d7dbgjfbj7d.apps.googleusercontent.com',
    iosBundleId: 'com.example.untitled.RunnerTests',
  );
}
