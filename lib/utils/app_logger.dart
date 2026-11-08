import 'package:flutter/foundation.dart';

/// Utility class untuk logging terstruktur (Latihan 4).
/// Log hanya akan dicetak jika aplikasi berada dalam mode kDebugMode.
class AppLogger {
  static void debug(String message) {
    if (kDebugMode) {
      print('[DEBUG] $message');
    }
  }

  static void info(String message) {
    if (kDebugMode) {
      print('[INFO] $message');
    }
  }

  static void warning(String message) {
    if (kDebugMode) {
      print('[WARNING] $message');
    }
  }

  static void error(String message) {
    if (kDebugMode) {
      print('[ERROR] $message');
    }
  }
}