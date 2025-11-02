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
    final loginSignupScreenLoginNameLabel = localizations.loginSignupScreenLoginNameLabel;
    final loginSignupScreenLoginPasswordLabel = localizations.loginSignupScreenLoginPasswordLabel;
    final loginSignupScreenSignupNameLabel = localizations.loginSignupScreenSignupNameLabel;
    final loginSignupScreenSignupPasswordLabel = localizations.loginSignupScreenSignupPasswordLabel;
    final loginSignupScreenSignupConfirmPasswordLabel = localizations.loginSignupScreenSignupConfirmPasswordLabel;

    final themeExtension = context.resolveThemeExtension<LoginSignupScreenThemeExtension>();
    final inputsSpacing = themeExtension.inputsSpacing;

    final viewModel = context.read<LoginSignupScreenViewModel>();
    final state = viewModel.state;
    final loginNameController = state.loginNameController;
    final loginPasswordController = state.loginPasswordController;
    final loginNameFocusNode = state.loginNameFocusNode;
    final loginPasswordFocusNode = state.loginPasswordFocusNode;
    final formKey = state.formKey;
    final loginNameValidator = viewModel.loginNameValidator;
    final loginPasswordValidator = viewModel.loginPasswordValidator;
    final validator = viewModel.validator;
    final signupNameController = state.signupNameController;
    final signupPasswordController = state.signupPasswordController;
    final signupConfirmPasswordController = state.signupConfirmPasswordController;
    final signupNameFocusNode = state.signupNameFocusNode;
    final signupPasswordFocusNode = state.signupPasswordFocusNode;
    final signupConfirmPasswordFocusNode = state.signupConfirmPasswordFocusNode;
    final signupNameValidator = viewModel.signupNameValidator;
    final signupPasswordValidator = viewModel.signupPasswordValidator;
    final signupConfirmPasswordValidator = viewModel.signupConfirmPasswordValidator;

    return Form(
      key: formKey,
      child: Column(
        spacing: inputsSpacing,
        mainAxisSize: MainAxisSize.min,
        children: switch (_mode) {
          LoginSignupScreenModeEnum.login => [
            _Input(
              label: loginSignupScreenLoginNameLabel,
              controller: loginNameController,
              focusNode: loginNameFocusNode,
              onFieldSubmitted: loginPasswordFocusNode.requestFocus,
              validator: loginNameValidator,
            ),
            _Input(
              label: loginSignupScreenLoginPasswordLabel,
              controller: loginPasswordController,
              focusNode: loginPasswordFocusNode,
              onFieldSubmitted: validator,
              validator: loginPasswordValidator,
              obscureText: true,
            ),
          ],
          LoginSignupScreenModeEnum.signup => [
            _Input(
              label: loginSignupScreenSignupNameLabel,
              controller: signupNameController,
              focusNode: signupNameFocusNode,
              onFieldSubmitted: signupPasswordFocusNode.requestFocus,
              validator: signupNameValidator,
            ),
            _Input(
              label: loginSignupScreenSignupPasswordLabel,
              controller: signupPasswordController,
              focusNode: signupPasswordFocusNode,
              onFieldSubmitted: signupConfirmPasswordFocusNode.requestFocus,
              validator: signupPasswordValidator,
              obscureText: true,
            ),
            _Input(
              label: loginSignupScreenSignupConfirmPasswordLabel,
              controller: signupConfirmPasswordController,
              focusNode: signupConfirmPasswordFocusNode,
              onFieldSubmitted: validator,
              validator: signupConfirmPasswordValidator,
              obscureText: true,
            ),
          ],
        },
      ),
    );
  }
}
