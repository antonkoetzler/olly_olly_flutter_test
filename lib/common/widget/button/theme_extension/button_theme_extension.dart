import 'package:flutter/material.dart';
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';

/// [ThemeExtension] of [Button].
@immutable
final class ButtonThemeExtension extends ThemeExtension<ButtonThemeExtension> {
  /// Default constructor.
  const ButtonThemeExtension({
    required this.idleBackgroundColor,
    required this.hoverBackgroundColor,
    required this.clickBackgroundColor,
    required this.border,
    required this.borderRadius,
    required this.contentPadding,
    required this.textStyle,
  });

  /// Builder constructor.
  ButtonThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : idleBackgroundColor = colorScheme.primary,
      hoverBackgroundColor = colorScheme.onPrimary.withValues(alpha: 0.5),
      clickBackgroundColor = colorScheme.onPrimary.withValues(alpha: 0.25),
      border = Border.all(width: kBorderWidth, color: colorScheme.onPrimary),
      borderRadius = BorderRadius.circular(kBorderRadius),
      contentPadding = const EdgeInsets.all(kMultiplier),
      textStyle = textTheme.bodyMedium!;

  /// [TapStatusEnum.idle] background [Color].
  final Color idleBackgroundColor;

  /// [TapStatusEnum.tap] background [Color].
  final Color hoverBackgroundColor;

  /// [TapStatusEnum.click] background [Color].
  final Color clickBackgroundColor;

  /// [BoxBorder].
  final BoxBorder border;

  /// [BorderRadius].
  final BorderRadius borderRadius;

  /// Content padding.
  final EdgeInsets contentPadding;

  /// Text style.
  final TextStyle textStyle;

  /// Copy with.
  @override
  ButtonThemeExtension copyWith({
    Color? idleBackgroundColor,
    Color? hoverBackgroundColor,
    Color? clickBackgroundColor,
    BoxBorder? border,
    BorderRadius? borderRadius,
    EdgeInsets? contentPadding,
    TextStyle? textStyle,
  }) {
    return ButtonThemeExtension(
      idleBackgroundColor: idleBackgroundColor ?? this.idleBackgroundColor,
      hoverBackgroundColor: hoverBackgroundColor ?? this.hoverBackgroundColor,
      clickBackgroundColor: clickBackgroundColor ?? this.clickBackgroundColor,
      border: border ?? this.border,
      borderRadius: borderRadius ?? this.borderRadius,
      contentPadding: contentPadding ?? this.contentPadding,
      textStyle: textStyle ?? this.textStyle,
    );
  }

  /// Lerp.
  @override
  ButtonThemeExtension lerp(ButtonThemeExtension? other, double t) {
    if (other is! ButtonThemeExtension) return this;
    return copyWith(
      idleBackgroundColor: Color.lerp(idleBackgroundColor, other.idleBackgroundColor, t),
      hoverBackgroundColor: Color.lerp(hoverBackgroundColor, other.hoverBackgroundColor, t),
      clickBackgroundColor: Color.lerp(clickBackgroundColor, other.clickBackgroundColor, t),
      border: BoxBorder.lerp(border, other.border, t),
      borderRadius: BorderRadius.lerp(borderRadius, other.borderRadius, t),
      contentPadding: EdgeInsets.lerp(contentPadding, other.contentPadding, t),
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t),
    );
  }
}
