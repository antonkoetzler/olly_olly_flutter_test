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
    required this.inputsSpacing,
    required this.buttonsSpacing,
    required this.inputsButtonsSpacing,
    required this.themeToggleButtonIconSize,
  });

  /// Builder constructor.
  const LoginSignupScreenThemeExtension.builder()
    : bodyPadding = const EdgeInsets.all(kMultiplier * 4),
      logoSize = kMultiplier * 40,
      inputsSpacing = kMultiplier * 3,
      buttonsSpacing = kMultiplier * 2,
      inputsButtonsSpacing = kMultiplier * 2,
      themeToggleButtonIconSize = kMultiplier * 8;

  /// [Padding] of the body.
  final EdgeInsets bodyPadding;

  /// Size of the logo.
  final double logoSize;

  /// Spacing between the inputs.
  final double inputsSpacing;

  /// Spacing between the buttons.
  final double buttonsSpacing;

  /// Spacing between the inputs and the buttons.
  final double inputsButtonsSpacing;

  /// Size of the theme toggle button icon.
  final double themeToggleButtonIconSize;

  /// Copy with.
  @override
  LoginSignupScreenThemeExtension copyWith({
    EdgeInsets? bodyPadding,
    double? logoSize,
    double? inputsSpacing,
    double? buttonsSpacing,
    double? inputsButtonsSpacing,
    double? themeToggleButtonIconSize,
  }) {
    return LoginSignupScreenThemeExtension(
      bodyPadding: bodyPadding ?? this.bodyPadding,
      logoSize: logoSize ?? this.logoSize,
      inputsSpacing: inputsSpacing ?? this.inputsSpacing,
      buttonsSpacing: buttonsSpacing ?? this.buttonsSpacing,
      inputsButtonsSpacing: inputsButtonsSpacing ?? this.inputsButtonsSpacing,
      themeToggleButtonIconSize: themeToggleButtonIconSize ?? this.themeToggleButtonIconSize,
    );
  }

  /// Lerp.
  @override
  LoginSignupScreenThemeExtension lerp(LoginSignupScreenThemeExtension? other, double t) {
    if (other is! LoginSignupScreenThemeExtension) return this;
    return copyWith(
      bodyPadding: EdgeInsets.lerp(bodyPadding, other.bodyPadding, t),
      logoSize: lerpDouble(logoSize, other.logoSize, t),
      inputsSpacing: lerpDouble(inputsSpacing, other.inputsSpacing, t),
      buttonsSpacing: lerpDouble(buttonsSpacing, other.buttonsSpacing, t),
      inputsButtonsSpacing: lerpDouble(inputsButtonsSpacing, other.inputsButtonsSpacing, t),
      themeToggleButtonIconSize: lerpDouble(themeToggleButtonIconSize, other.themeToggleButtonIconSize, t),
    );
  }
}
