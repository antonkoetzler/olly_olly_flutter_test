import 'package:flutter/material.dart';
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';

/// Input.
final class Input extends StatelessWidget {
  /// Default value of [label].
  static const labelDefaultValue = kEmptyString;

  /// Default constructor.
  const Input({super.key, this.label = labelDefaultValue, this.focusNode, this.onFieldSubmitted});

  /// [InputDecoration.labelText]
  ///
  /// Label of the dropdown.
  final String label;

  /// [FocusNode].
  final FocusNode? focusNode;

  /// Callback executed when the user submits the input (presses enter).
  final void Function(String text)? onFieldSubmitted;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<InputThemeExtension>();
    final contentPadding = themeExtension.contentPadding;
    final labelStyle = themeExtension.labelStyle;
    final cursorColor = themeExtension.cursorColor;

    return TextFormField(
      showCursor: true,
      enableInteractiveSelection: true,
      cursorColor: cursorColor,
      focusNode: focusNode,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
        enabledBorder: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(),
        contentPadding: contentPadding,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelStyle: labelStyle,
      ),
    );
  }
}
