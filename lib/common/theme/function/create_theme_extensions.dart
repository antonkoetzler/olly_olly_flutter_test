import 'package:flutter/material.dart';
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';

/// Creates the [ThemeExtension]s.
Iterable<ThemeExtension> createThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [
    ButtonThemeExtension.builder(colorScheme, textTheme),
    InputThemeExtension.builder(colorScheme, textTheme),
    LoadingThemeExtension.builder(colorScheme),
    const ThemeToggleButtonThemeExtension.builder(),
    const LoginSignupScreenThemeExtension.builder(),
    HomeScreenThemeExtension.builder(textTheme),
  ];
}
