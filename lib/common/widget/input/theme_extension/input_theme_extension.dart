import 'package:flutter/material.dart';
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';

/// [ThemeExtension] of [Input].
@immutable
final class InputThemeExtension extends ThemeExtension<InputThemeExtension> {
  /// Default constructor.
  const InputThemeExtension({
    required this.contentPadding,
    required this.cursorColor,
    required this.border,
    required this.errorBorder,
    required this.floatingLabelStyle,
    required this.textStyle,
  });

  /// Builder constructor.
  InputThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : contentPadding = const EdgeInsets.all(kMultiplier),
      cursorColor = colorScheme.onPrimary,
      border = BorderSide(width: kBorderWidth, color: colorScheme.onPrimary),
      errorBorder = BorderSide(width: kBorderWidth, color: colorScheme.error),
      floatingLabelStyle = WidgetStateTextStyle.resolveWith((Set<WidgetState> states) {
        final baseStyle = textTheme.bodyMedium!;
        final color = states.contains(WidgetState.error) ? colorScheme.error : baseStyle.color;
        return baseStyle.copyWith(color: color);
      }),
      textStyle = textTheme.bodyMedium!;

  /// [InputDecoration.contentPadding].
  final EdgeInsets contentPadding;

  /// [TextFormField.cursorColor].
  final Color cursorColor;

  /// [InputDecoration.border].
  final BorderSide border;

  /// [InputDecoration.errorBorder].
  final BorderSide errorBorder;

  /// [InputDecoration.floatingLabelStyle].
  final WidgetStateTextStyle floatingLabelStyle;

  /// [TextFormField.style].
  final TextStyle textStyle;

  /// Copy with.
  @override
  InputThemeExtension copyWith({
    EdgeInsets? contentPadding,
    Color? cursorColor,
    BorderSide? border,
    BorderSide? errorBorder,
    WidgetStateTextStyle? floatingLabelStyle,
    TextStyle? textStyle,
  }) {
    return InputThemeExtension(
      contentPadding: contentPadding ?? this.contentPadding,
      cursorColor: cursorColor ?? this.cursorColor,
      border: border ?? this.border,
      errorBorder: errorBorder ?? this.errorBorder,
      floatingLabelStyle: floatingLabelStyle ?? this.floatingLabelStyle,
      textStyle: textStyle ?? this.textStyle,
    );
  }

  /// Lerp.
  @override
  InputThemeExtension lerp(InputThemeExtension? other, double t) {
    if (other is! InputThemeExtension) return this;
    // WidgetStateTextStyle doesn't have a lerp method, so we keep the original
    return copyWith(
      contentPadding: EdgeInsets.lerp(contentPadding, other.contentPadding, t),
      cursorColor: Color.lerp(cursorColor, other.cursorColor, t),
      border: BorderSide.lerp(border, other.border, t),
      errorBorder: BorderSide.lerp(errorBorder, other.errorBorder, t),
      floatingLabelStyle: t < 0.5 ? floatingLabelStyle : other.floatingLabelStyle,
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t),
    );
  }
}
