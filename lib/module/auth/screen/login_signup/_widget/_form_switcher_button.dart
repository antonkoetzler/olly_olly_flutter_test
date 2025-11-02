part of '../widget/login_signup_screen.dart';

/// Form switcher button of [LoginSignupScreen].
final class _FormSwitcherButton extends StatelessWidget {
  /// Default constructor.
  const _FormSwitcherButton(this._mode);

  /// Mode.
  final LoginSignupScreenModeEnum _mode;

  /// Build function.
  @override
  Widget build(context) {
    final loginSignupScreenLoginFormSwitcherButtonLabel = localizations.loginSignupScreenLoginFormSwitcherButtonLabel;
    final loginSignupScreenSignupFormSwitcherButtonLabel = localizations.loginSignupScreenSignupFormSwitcherButtonLabel;

    final viewModel = context.read<LoginSignupScreenViewModel>();
    final formSwitcherButtonOnTapUp = viewModel.formSwitcherButtonOnTapUp;

    return Button(
      text: switch (_mode) {
        LoginSignupScreenModeEnum.login => loginSignupScreenLoginFormSwitcherButtonLabel,
        LoginSignupScreenModeEnum.signup => loginSignupScreenSignupFormSwitcherButtonLabel,
      },
      onTapUp: formSwitcherButtonOnTapUp,
    );
  }
}
