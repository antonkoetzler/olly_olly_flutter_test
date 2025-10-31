part of 'login_signup_screen_view_model.dart';

/// State of [LoginSignupScreenViewModel].
final class LoginSignupScreenState {
  /// [ValueNotifier] controlling which [LoginSignupScreenModeEnum] is selected.
  final _modeController = ValueNotifier(LoginSignupScreenModeEnum.login);

  /// Dispose function.
  void dispose() {
    _modeController.dispose();
  }

  /// [_modeController] getter.
  ValueNotifier<LoginSignupScreenModeEnum> get modeController {
    return _modeController;
  }

  /// Getter of [_modeController]'s value.
  LoginSignupScreenModeEnum get mode {
    return _modeController.value;
  }

  /// [_modeController] setter.
  void setMode(LoginSignupScreenModeEnum mode) {
    _modeController.value = mode;
  }
}
