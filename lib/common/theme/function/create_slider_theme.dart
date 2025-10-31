import 'package:flutter/material.dart';
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';

/// Function to create the [SliderTheme] for [createThemeData]'s [SliderTheme].
SliderThemeData createSliderThemeData(ColorScheme colorScheme) {
  return SliderThemeData(
    activeTrackColor: colorScheme.onPrimary,
    inactiveTrackColor: colorScheme.onPrimary.withValues(alpha: 0.5),
    thumbColor: colorScheme.onPrimary,
    overlayColor: AppColors.transparent,
  );
}
