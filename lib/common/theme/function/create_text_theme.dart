import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';

/// Creates the [TextTheme].
TextTheme createTextTheme(ColorScheme colorScheme) {
  final inter = GoogleFonts.interTextTheme();

  TextStyle createTextStyle(TextStyle textStyle, FontSizeEnum fontSizeEnum, FontWeight fontWeight) {
    return textStyle.copyWith(color: colorScheme.onPrimary, fontSize: fontSizeEnum.size, fontWeight: fontWeight);
  }

  return inter.copyWith(
    displaySmall: createTextStyle(inter.displaySmall!, FontSizeEnum.small, FontWeight.normal),
    displayMedium: createTextStyle(inter.displayMedium!, FontSizeEnum.medium, FontWeight.normal),
    displayLarge: createTextStyle(inter.displayLarge!, FontSizeEnum.large, FontWeight.normal),
    headlineSmall: createTextStyle(inter.headlineSmall!, FontSizeEnum.small, FontWeight.normal),
    headlineMedium: createTextStyle(inter.headlineMedium!, FontSizeEnum.medium, FontWeight.normal),
    headlineLarge: createTextStyle(inter.headlineLarge!, FontSizeEnum.large, FontWeight.normal),
    titleSmall: createTextStyle(inter.titleSmall!, FontSizeEnum.small, FontWeight.bold),
    titleMedium: createTextStyle(inter.titleMedium!, FontSizeEnum.medium, FontWeight.bold),
    titleLarge: createTextStyle(inter.titleLarge!, FontSizeEnum.large, FontWeight.bold),
    bodySmall: createTextStyle(inter.bodySmall!, FontSizeEnum.small, FontWeight.normal),
    bodyMedium: createTextStyle(inter.bodyMedium!, FontSizeEnum.medium, FontWeight.normal),
    bodyLarge: createTextStyle(inter.bodyLarge!, FontSizeEnum.large, FontWeight.normal),
    labelSmall: createTextStyle(inter.labelSmall!, FontSizeEnum.small, FontWeight.normal),
    labelMedium: createTextStyle(inter.labelMedium!, FontSizeEnum.medium, FontWeight.normal),
    labelLarge: createTextStyle(inter.labelLarge!, FontSizeEnum.large, FontWeight.normal),
  );
}
