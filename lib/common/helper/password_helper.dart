import 'dart:convert';

import 'package:crypto/crypto.dart';

/// Helper for password operations.
final class PasswordHelper {
  /// Hashes a password.
  static String hash(String password) {
    final bytes = utf8.encode(password);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }

  /// Verifies a password against a hash.
  static bool verify(String password, String hash) {
    return PasswordHelper.hash(password) == hash;
  }
}
