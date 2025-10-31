import 'package:flutter/material.dart';
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';

/// Creates the [ThemeExtension]s.
Iterable<ThemeExtension> createThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [ButtonThemeExtension.builder(colorScheme), InputThemeExtension.builder(colorScheme, textTheme), const LoginSignupScreenThemeExtension.builder()];
}
