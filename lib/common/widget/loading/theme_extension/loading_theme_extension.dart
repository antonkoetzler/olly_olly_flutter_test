import 'package:flutter/material.dart';
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';

/// Theme extension of [Loading].
final class LoadingThemeExtension extends ThemeExtension<LoadingThemeExtension> {
  /// Default constructor.
  const LoadingThemeExtension({required this.color});

  /// Builder constructor.
  LoadingThemeExtension.builder(ColorScheme colorScheme) : color = colorScheme.onPrimary;

  /// Color.
  final Color color;

  /// Build function.
  @override
  LoadingThemeExtension copyWith({Color? color}) {
    return LoadingThemeExtension(color: color ?? this.color);
  }

  /// Lerp function.
  @override
  ThemeExtension<LoadingThemeExtension> lerp(ThemeExtension<LoadingThemeExtension>? other, double t) {
    if (other is! LoadingThemeExtension) return this;
    return LoadingThemeExtension(color: Color.lerp(color, other.color, t) ?? color);
  }
}
