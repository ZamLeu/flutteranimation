import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
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
    apiKey: 'AIzaSyCIEvJNVaSyQYaVk0T2Ob24kIw9d2HhUKg',
    appId: '1:397045236080:web:8062eaafa181b547d00fb5',
    messagingSenderId: '397045236080',
    projectId: 'flutteranimation-469f4',
    authDomain: 'flutteranimation-469f4.firebaseapp.com',
    databaseURL: 'https://flutteranimation-469f4-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'flutteranimation-469f4.firebasestorage.app',
    measurementId: 'G-XFWZEZSW0X',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDAVaZL2nlalDkQxMZAqR9JFz6E7XTFNLA',
    appId: '1:397045236080:android:41639eed07e6e586d00fb5',
    messagingSenderId: '397045236080',
    projectId: 'flutteranimation-469f4',
    databaseURL: 'https://flutteranimation-469f4-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'flutteranimation-469f4.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCvCXOqzDd3zoJ7abn7GPH-duW5hNP4cEk',
    appId: '1:397045236080:ios:0f520c2237a4869bd00fb5',
    messagingSenderId: '397045236080',
    projectId: 'flutteranimation-469f4',
    databaseURL: 'https://flutteranimation-469f4-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'flutteranimation-469f4.firebasestorage.app',
    iosBundleId: 'com.example.flutteranimation',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCIEvJNVaSyQYaVk0T2Ob24kIw9d2HhUKg',
    appId: '1:397045236080:web:93eb9894556bf0b3d00fb5',
    messagingSenderId: '397045236080',
    projectId: 'flutteranimation-469f4',
    authDomain: 'flutteranimation-469f4.firebaseapp.com',
    databaseURL: 'https://flutteranimation-469f4-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'flutteranimation-469f4.firebasestorage.app',
    measurementId: 'G-YSNXPNKTPN',
  );

}