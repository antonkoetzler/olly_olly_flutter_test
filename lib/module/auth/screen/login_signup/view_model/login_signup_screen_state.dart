part of 'login_signup_screen_view_model.dart';

/// State of [LoginSignupScreenViewModel].
final class LoginSignupScreenState {
  /// [ValueNotifier] controlling which [LoginSignupScreenModeEnum] is selected.
  final _modeController = ValueNotifier(LoginSignupScreenModeEnum.login);

  /// [GlobalKey] for the login form.
  final _formKey = GlobalKey<FormState>();

  /// [ValueNotifier] for the form processing.
  final _loadingController = ValueNotifier(false);

  /// [TextEditingController] for the login form's name input.
  final _loginNameController = TextEditingController();

  /// [TextEditingController] for the login form's password input.
  final _loginPasswordController = TextEditingController();

  /// [TextEditingController] for the signup form's name input.
  final _signupNameController = TextEditingController();

  /// [TextEditingController] for the signup form's password input.
  final _signupPasswordController = TextEditingController();

  /// [TextEditingController] for the signup form's confirm password input.
  final _signupConfirmPasswordController = TextEditingController();

  /// [FocusNode] for the login form's name input.
  final _loginNameFocusNode = FocusNode();

  /// [FocusNode] for the login form's password input.
  final _loginPasswordFocusNode = FocusNode();

  /// [FocusNode] for the signup form's name input.
  final _signupNameFocusNode = FocusNode();

  /// [FocusNode] for the signup form's password input.
  final _signupPasswordFocusNode = FocusNode();

  /// [FocusNode] for the signup form's confirm password input.
  final _signupConfirmPasswordFocusNode = FocusNode();

  /// Dispose function.
  void dispose() {
    _modeController.dispose();
    _loginNameController.dispose();
    _loginPasswordController.dispose();
    _signupNameController.dispose();
    _signupPasswordController.dispose();
    _signupConfirmPasswordController.dispose();
    _loginNameFocusNode.dispose();
    _loginPasswordFocusNode.dispose();
    _signupNameFocusNode.dispose();
    _signupPasswordFocusNode.dispose();
    _signupConfirmPasswordFocusNode.dispose();
  }

  /// [_modeController] getter.
  ValueNotifier<LoginSignupScreenModeEnum> get modeController {
    return _modeController;
  }

  /// Getter of [_modeController]'s value.
  LoginSignupScreenModeEnum get mode {
    return _modeController.value;
  }

  /// [_formKey] getter.
  GlobalKey<FormState> get formKey {
    return _formKey;
  }

  /// [_loadingController] getter.
  ValueNotifier<bool> get loadingController {
    return _loadingController;
  }

  /// [_loginNameController] getter.
  TextEditingController get loginNameController {
    return _loginNameController;
  }

  /// [_loginPasswordController] getter.
  TextEditingController get loginPasswordController {
    return _loginPasswordController;
  }

  /// [_signupNameController] getter.
  TextEditingController get signupNameController {
    return _signupNameController;
  }

  /// [_signupPasswordController] getter.
  TextEditingController get signupPasswordController {
    return _signupPasswordController;
  }

  /// [_signupConfirmPasswordController] getter.
  TextEditingController get signupConfirmPasswordController {
    return _signupConfirmPasswordController;
  }

  /// [_loginNameFocusNode] getter.
  FocusNode get loginNameFocusNode {
    return _loginNameFocusNode;
  }

  /// [_loginPasswordFocusNode] getter.
  FocusNode get loginPasswordFocusNode {
    return _loginPasswordFocusNode;
  }

  /// [_signupNameFocusNode] getter.
  FocusNode get signupNameFocusNode {
    return _signupNameFocusNode;
  }

  /// [_signupPasswordFocusNode] getter.
  FocusNode get signupPasswordFocusNode {
    return _signupPasswordFocusNode;
  }

  /// [_signupConfirmPasswordFocusNode] getter.
  FocusNode get signupConfirmPasswordFocusNode {
    return _signupConfirmPasswordFocusNode;
  }

  /// [_modeController] setter.
  set mode(LoginSignupScreenModeEnum mode) {
    _modeController.value = mode;
  }

  /// [_loadingController] setter.
  set loading(bool loading) {
    _loadingController.value = loading;
  }
}
