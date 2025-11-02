import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';

/// Theme extension for [ThemeToggleButton].
final class ThemeToggleButtonThemeExtension extends ThemeExtension<ThemeToggleButtonThemeExtension> {
  /// Default constructor.
  const ThemeToggleButtonThemeExtension({required this.iconSize});

  /// Builder constructor.
  const ThemeToggleButtonThemeExtension.builder() : iconSize = kMultiplier * 5;

  /// Size of the icon.
  final double iconSize;

  /// Copy with.
  @override
  ThemeToggleButtonThemeExtension copyWith({double? iconSize}) {
    return ThemeToggleButtonThemeExtension(iconSize: iconSize ?? this.iconSize);
  }

  /// Lerp.
  @override
  ThemeToggleButtonThemeExtension lerp(ThemeToggleButtonThemeExtension? other, double t) {
    if (other is! ThemeToggleButtonThemeExtension) return this;
    return copyWith(iconSize: lerpDouble(iconSize, other.iconSize, t));
  }
}
