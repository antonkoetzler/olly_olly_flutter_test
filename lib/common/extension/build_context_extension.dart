import 'package:flutter/material.dart';

/// Extension on [BuildContext].
extension BuildContextExtension on BuildContext {
  /// Resolves a [ThemeExtension] and throws a [StateError]
  /// if the [ThemeExtension] isn't apart of the [BuildContext].
  T resolveThemeExtension<T extends ThemeExtension<T>>() {
    final themeExtension = Theme.of(this).extension<T>();
    if (themeExtension != null) return themeExtension;
    throw StateError(
      '[MyoroBuildContextExtension.resolveThemeExtension]: [ThemeExtension] of type [$T] is not registered in the theme.'
      'Make sure the [ThemeExtension] is included in the theme extensions list when creating the [ThemeData].',
    );
  }

  /// Shows a snack bar.
  void showSnackBar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(behavior: SnackBarBehavior.floating, content: Text(message)));
  }

  /// Closes the snack bar (if any is open).
  void hideSnackBar() {
    ScaffoldMessenger.of(this).hideCurrentSnackBar();
  }
}
