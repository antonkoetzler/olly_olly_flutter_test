import 'package:flutter/material.dart';
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';

/// Creates the [ThemeData].
ThemeData createThemeData({required bool isDarkMode}) {
  final colorScheme = createColorScheme(isDarkMode);
  final textTheme = createTextTheme(colorScheme);
  final sliderTheme = createSliderThemeData(colorScheme);
  final textSelectionTheme = createTextSelectionThemeData(colorScheme);
  final extensions = createThemeExtensions(colorScheme, textTheme);
  return ThemeData(
    colorScheme: colorScheme,
    textTheme: textTheme,
    sliderTheme: sliderTheme,
    textSelectionTheme: textSelectionTheme,
    extensions: extensions,
  );
}
