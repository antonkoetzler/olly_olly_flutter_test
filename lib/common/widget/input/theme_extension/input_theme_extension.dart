import 'package:flutter/material.dart';
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';

/// [ThemeExtension] of [Input].
@immutable
final class InputThemeExtension extends ThemeExtension<InputThemeExtension> {
  /// Default constructor.
  const InputThemeExtension({required this.contentPadding, required this.labelStyle, required this.cursorColor});

  /// Builder constructor.
  InputThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : contentPadding = const EdgeInsets.all(kMultiplier),
      labelStyle = textTheme.headlineSmall!,
      cursorColor = colorScheme.onPrimary;

  /// [InputDecoration.contentPadding].
  final EdgeInsets contentPadding;

  /// [InputDecoration.labelStyle].
  final TextStyle labelStyle;

  /// [TextFormField.cursorColor].
  final Color cursorColor;

  /// Copy with.
  @override
  InputThemeExtension copyWith({EdgeInsets? contentPadding, TextStyle? labelStyle, Color? cursorColor}) {
    return InputThemeExtension(
      contentPadding: contentPadding ?? this.contentPadding,
      labelStyle: labelStyle ?? this.labelStyle,
      cursorColor: cursorColor ?? this.cursorColor,
    );
  }

  /// Lerp.
  @override
  InputThemeExtension lerp(InputThemeExtension? other, double t) {
    if (other is! InputThemeExtension) return this;
    return copyWith(
      contentPadding: EdgeInsets.lerp(contentPadding, other.contentPadding, t),
      labelStyle: TextStyle.lerp(labelStyle, other.labelStyle, t),
      cursorColor: Color.lerp(cursorColor, other.cursorColor, t),
    );
  }
}
