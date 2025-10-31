import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';

/// [ThemeExtension] of [LoginSignupScreen].
@immutable
final class LoginSignupScreenThemeExtension extends ThemeExtension<LoginSignupScreenThemeExtension> {
  /// Default constructor.
  const LoginSignupScreenThemeExtension({
    required this.bodyPadding,
    required this.logoSize,
    required this.themeToggleButtonIconSize,
    required this.inputsSpacing,
    required this.buttonsSpacing,
  });

  /// Builder constructor.
  const LoginSignupScreenThemeExtension.builder()
    : bodyPadding = const EdgeInsets.all(kMultiplier * 4),
      logoSize = kMultiplier * 40,
      themeToggleButtonIconSize = kMultiplier * 7,
      inputsSpacing = kMultiplier * 3,
      buttonsSpacing = kMultiplier;

  /// [Padding] of the body.
  final EdgeInsets bodyPadding;

  /// Size of the logo.
  final double logoSize;

  /// Size of the theme toggle button's icon.
  final double themeToggleButtonIconSize;

  /// Spacing between the inputs.
  final double inputsSpacing;

  /// Spacing between the buttons.
  final double buttonsSpacing;

  /// Copy with.
  @override
  LoginSignupScreenThemeExtension copyWith({
    EdgeInsets? bodyPadding,
    double? logoSize,
    double? themeToggleButtonIconSize,
    double? inputsSpacing,
    double? buttonsSpacing,
  }) {
    return LoginSignupScreenThemeExtension(
      bodyPadding: bodyPadding ?? this.bodyPadding,
      logoSize: logoSize ?? this.logoSize,
      themeToggleButtonIconSize: themeToggleButtonIconSize ?? this.themeToggleButtonIconSize,
      inputsSpacing: inputsSpacing ?? this.inputsSpacing,
      buttonsSpacing: buttonsSpacing ?? this.buttonsSpacing,
    );
  }

  /// Lerp.
  @override
  LoginSignupScreenThemeExtension lerp(LoginSignupScreenThemeExtension? other, double t) {
    if (other is! LoginSignupScreenThemeExtension) return this;
    return copyWith(
      bodyPadding: EdgeInsets.lerp(bodyPadding, other.bodyPadding, t),
      logoSize: lerpDouble(logoSize, other.logoSize, t),
      themeToggleButtonIconSize: lerpDouble(themeToggleButtonIconSize, other.themeToggleButtonIconSize, t),
      inputsSpacing: lerpDouble(inputsSpacing, other.inputsSpacing, t),
      buttonsSpacing: lerpDouble(buttonsSpacing, other.buttonsSpacing, t),
    );
  }
}
