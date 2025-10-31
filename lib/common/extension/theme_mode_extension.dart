import 'package:flutter/material.dart';

/// Extension on [ThemeMode].
extension ThemeModeExtension on ThemeMode {
  /// Returns the [Brightness] of the [ThemeMode].
  Brightness getBrightness(BuildContext context) {
    return switch (this) {
      ThemeMode.dark => Brightness.dark,
      ThemeMode.light => Brightness.light,
      ThemeMode.system => MediaQuery.of(context).platformBrightness,
    };
  }
}
