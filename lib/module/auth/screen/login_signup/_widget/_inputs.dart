part of '../widget/login_signup_screen.dart';

/// Inputs of [LoginSignupScreen].
final class _Inputs extends StatelessWidget {
  /// Default constructor.
  const _Inputs(this._mode);

  /// Mode.
  final LoginSignupScreenModeEnum _mode;

  /// Build function.
  @override
  Widget build(context) {
    final localizations = context.localizations;
    final loginSignupScreenLoginUsernameOrEmailLabel = localizations.loginSignupScreenLoginUsernameOrEmailLabel;
    final loginSignupScreenLoginPasswordLabel = localizations.loginSignupScreenLoginPasswordLabel;

    final themeExtension = context.resolveThemeExtension<LoginSignupScreenThemeExtension>();
    final inputsSpacing = themeExtension.inputsSpacing;

    return Column(
      spacing: inputsSpacing,
      mainAxisSize: MainAxisSize.min,
      children: switch (_mode) {
        LoginSignupScreenModeEnum.login => [
          _Input(loginSignupScreenLoginUsernameOrEmailLabel, loginUsernameOrEmailFocusNode, loginPasswordFocusNode),
          _Input(loginSignupScreenLoginPasswordLabel, loginPasswordFocusNode),
        ],
        LoginSignupScreenModeEnum.signup => const [Text('TODO')],
      },
    );
  }
}
