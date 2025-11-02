import 'package:flutter/material.dart';
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';

/// Function to create the [TextSelectionThemeData] in [createThemeData].
TextSelectionThemeData createTextSelectionThemeData(ColorScheme colorScheme) {
  final onPrimary = colorScheme.onPrimary;
  final translucentOnPrimary = onPrimary.withValues(alpha: 0.3);
  return TextSelectionThemeData(
    cursorColor: onPrimary,
    selectionColor: translucentOnPrimary,
    selectionHandleColor: onPrimary,
  );
}
