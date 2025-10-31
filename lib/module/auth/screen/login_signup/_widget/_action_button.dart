part of '../widget/login_signup_screen.dart';

/// Login/signup button of [LoginSignupScreen].
final class _ActionButton extends StatelessWidget {
  /// Default constructor.
  const _ActionButton(this._mode);

  /// Mode.
  final LoginSignupScreenModeEnum _mode;

  /// Build function.
  @override
  Widget build(context) {
    final localizations = context.localizations;
    final loginSignupScreenLoginActionButtonLabel = localizations.loginSignupScreenLoginActionButtonLabel;
    final loginSignupScreenSignupActionButtonLabel = localizations.loginSignupScreenSignupActionButtonLabel;

    return Button(
      text: switch (_mode) {
        LoginSignupScreenModeEnum.login => loginSignupScreenLoginActionButtonLabel,
        LoginSignupScreenModeEnum.signup => loginSignupScreenSignupActionButtonLabel,
      },
    );
  }
}
