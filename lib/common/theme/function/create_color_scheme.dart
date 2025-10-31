import 'package:flutter/material.dart';
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';

/// Creates the [ColorScheme].
ColorScheme createColorScheme(bool isDarkMode) {
  final brightness = isDarkMode ? Brightness.dark : Brightness.light;
  final primary = isDarkMode ? AppColors.dark : AppColors.light;
  final secondary = isDarkMode ? AppColors.light : AppColors.dark;
  const error = AppColors.error;

  return ColorScheme(
    brightness: brightness,
    primary: primary,
    onPrimary: secondary,
    secondary: primary,
    onSecondary: secondary,
    error: error,
    onError: secondary,
    surface: primary,
    onSurface: secondary,
  );
}
