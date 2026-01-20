import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  /// Gets the current platform's Firebase options.
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw _unsupportedError(
          'web', 'try to add using FlutLab Firebase Configuration');
    }

    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw _unsupportedError(
            'iOS', 'try to add using FlutLab Firebase Configuration');
      case TargetPlatform.macOS:
      case TargetPlatform.windows:
      case TargetPlatform.linux:
        throw _unsupportedError(targetPlatformToString(defaultTargetPlatform),
            'it is not supported by FlutLab yet, but you can add it manually');
      default:
        throw _unsupportedError('this platform', 'not supported');
    }
  }

  /// Creates an [UnsupportedError] with a custom message.
  static UnsupportedError _unsupportedError(
      String platform, String suggestion) {
    return UnsupportedError(
      'DefaultFirebaseOptions have not been configured for $platform - $suggestion',
    );
  }

  /// Maps the TargetPlatform to a string for better error messaging.
  static String targetPlatformToString(TargetPlatform platform) {
    switch (platform) {
      case TargetPlatform.macOS:
        return 'macOS';
      case TargetPlatform.windows:
        return 'Windows';
      case TargetPlatform.linux:
        return 'Linux';
      default:
        return 'unknown platform';
    }
  }

  /// The Firebase options for Android.
  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAuoc28hkS4V3ixzY16W7d_rGa68CFbWbU',
    appId: '1:434762033496:android:d4f3fe83197fffd6521d2d',
    messagingSenderId: '434762033496',
    projectId: 'facebook-clone-524b0',
    storageBucket: 'facebook-clone-524b0.firebasestorage.app',
  );
}
