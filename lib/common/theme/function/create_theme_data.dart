import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';

/// Creates the [ThemeData].
ThemeData createThemeData({required bool isDarkMode}) {
  final colorScheme = createColorScheme(isDarkMode);
  final textTheme = GoogleFonts.interTextTheme();
  final sliderTheme = createSliderThemeData(colorScheme);
  final textSelectionTheme = createTextSelectionThemeData(colorScheme);
  final extensions = createThemeExtensions(colorScheme, textTheme);
  return ThemeData(colorScheme: colorScheme, textTheme: textTheme, sliderTheme: sliderTheme, textSelectionTheme: textSelectionTheme, extensions: extensions);
}
