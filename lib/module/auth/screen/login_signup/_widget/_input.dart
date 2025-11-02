part of '../widget/login_signup_screen.dart';

/// Generic input of [LoginSignupScreen].
final class _Input extends StatelessWidget {
  /// Default constructor.
  const _Input({
    required this.label,
    required this.controller,
    required this.focusNode,
    required this.onFieldSubmitted,
    required this.validator,
    this.obscureText = false,
  });

  /// Label.
  final String label;

  /// [TextEditingController].
  final TextEditingController controller;

  /// [FocusNode].
  final FocusNode focusNode;

  /// [Input.onFieldSubmitted].
  final VoidCallback onFieldSubmitted;

  /// Validator.
  final String? Function() validator;

  /// [Input.obscureText].
  final bool obscureText;

  /// Build function.
  @override
  Widget build(_) {
    return Input(
      label: label,
      controller: controller,
      focusNode: focusNode,
      onFieldSubmitted: (_) => onFieldSubmitted(),
      validator: (_) => validator(),
      obscureText: obscureText,
    );
  }
}
