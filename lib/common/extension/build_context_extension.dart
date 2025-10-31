import 'package:flutter/material.dart';
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';

/// Extension on [BuildContext].
extension BuildContextExtension on BuildContext {
  /// Get the [AppLocalizations] instance.
  AppLocalizations get localizations {
    return AppLocalizations.of(this)!;
  }

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
}
