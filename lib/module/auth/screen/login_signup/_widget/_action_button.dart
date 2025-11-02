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
    final loginSignupScreenLoginActionButtonLabel = localizations.loginSignupScreenLoginActionButtonLabel;
    final loginSignupScreenSignupActionButtonLabel = localizations.loginSignupScreenSignupActionButtonLabel;

    final viewModel = context.read<LoginSignupScreenViewModel>();
    final validator = viewModel.validator;

    return Button(
      text: switch (_mode) {
        LoginSignupScreenModeEnum.login => loginSignupScreenLoginActionButtonLabel,
        LoginSignupScreenModeEnum.signup => loginSignupScreenSignupActionButtonLabel,
      },
      onTapUp: validator,
    );
  }
}
