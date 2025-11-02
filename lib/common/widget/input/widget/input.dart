import 'package:flutter/material.dart';
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';

/// Input.
final class Input extends StatelessWidget {
  /// Default value of [label].
  static const labelDefaultValue = kEmptyString;

  /// Default value of [obscureText].
  static const obscureTextDefaultValue = false;

  /// Default constructor.
  const Input({
    super.key,
    this.label = labelDefaultValue,
    this.controller,
    this.focusNode,
    this.onFieldSubmitted,
    this.validator,
    this.obscureText = obscureTextDefaultValue,
  });

  /// [InputDecoration.labelText]
  ///
  /// Label of the dropdown.
  final String label;

  /// [TextEditingController].
  final TextEditingController? controller;

  /// [FocusNode].
  final FocusNode? focusNode;

  /// Callback executed when the user submits the input (presses enter).
  final void Function(String text)? onFieldSubmitted;

  /// Validator.
  final String? Function(String? value)? validator;

  /// [Input.obscureText].
  final bool obscureText;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<InputThemeExtension>();
    final contentPadding = themeExtension.contentPadding;
    final cursorColor = themeExtension.cursorColor;
    final border = themeExtension.border;
    final errorBorder = themeExtension.errorBorder;
    final floatingLabelStyle = themeExtension.floatingLabelStyle;
    final textStyle = themeExtension.textStyle;

    return TextFormField(
      showCursor: true,
      enableInteractiveSelection: true,
      cursorColor: cursorColor,
      style: textStyle,
      controller: controller,
      focusNode: focusNode,
      onFieldSubmitted: onFieldSubmitted,
      validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        floatingLabelStyle: floatingLabelStyle,
        border: OutlineInputBorder(borderSide: border),
        enabledBorder: OutlineInputBorder(borderSide: border),
        focusedBorder: OutlineInputBorder(borderSide: border),
        errorBorder: OutlineInputBorder(borderSide: errorBorder),
        contentPadding: contentPadding,
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
