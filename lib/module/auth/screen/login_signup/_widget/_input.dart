part of '../widget/login_signup_screen.dart';

/// Generic input of [LoginSignupScreen].
final class _Input extends StatelessWidget {
  /// Default constructor.
  const _Input(this._label, this._focusNode, [this._neighborFocusNode]);

  /// Label.
  final String _label;

  /// [FocusNode].
  final FocusNode? _focusNode;

  /// [FocusNode] to focus when [Input.onFieldSubmitted] is called.
  final FocusNode? _neighborFocusNode;

  /// Build function.
  @override
  Widget build(_) {
    return Input(label: _label, focusNode: _focusNode, onFieldSubmitted: _neighborFocusNode != null ? (_) => _neighborFocusNode.requestFocus() : null);
  }
}
