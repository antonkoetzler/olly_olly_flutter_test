import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';

/// Helper for snack bar operations.
final class SnackBarHelper {
  /// Shows a snack bar.
  static void show(String message) {
    navigatorKey.currentContext?.showSnackBar(message);
  }

  /// Closes the snack bar (if any is open).
  static void hide() {
    navigatorKey.currentContext?.hideSnackBar();
  }
}
