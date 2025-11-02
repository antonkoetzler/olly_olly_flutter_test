import 'dart:async';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';

part 'login_signup_screen_state.dart';

/// View model of [LoginSignupScreen].
@injectable
final class LoginSignupScreenViewModel {
  /// Default constructor.
  LoginSignupScreenViewModel(this._authService, this._appSharedPreferences);

  /// [AuthService].
  final AuthService _authService;

  /// [AppSharedPreferences].
  final AppSharedPreferences _appSharedPreferences;

  /// State.
  final _state = LoginSignupScreenState();

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Form switcher button on tap up.
  void formSwitcherButtonOnTapUp() {
    _state.formKey.currentState?.reset();
    _state.mode = switch (_state.mode) {
      LoginSignupScreenModeEnum.login => LoginSignupScreenModeEnum.signup,
      LoginSignupScreenModeEnum.signup => LoginSignupScreenModeEnum.login,
    };
  }

  /// Login name validator.
  String? loginNameValidator() {
    final loginSignupScreenLoginNameValidator = localizations.loginSignupScreenLoginNameValidator;
    final loginNameController = _state.loginNameController;
    final loginNameText = loginNameController.text;
    return loginNameText.isEmpty ? loginSignupScreenLoginNameValidator : null;
  }

  /// Login password validator.
  String? loginPasswordValidator() {
    final loginSignupScreenLoginPasswordValidator = localizations.loginSignupScreenLoginPasswordValidator;
    final loginPasswordController = _state.loginPasswordController;
    final loginPasswordText = loginPasswordController.text;
    return loginPasswordText.isEmpty ? loginSignupScreenLoginPasswordValidator : null;
  }

  /// Signup name validator.
  String? signupNameValidator() {
    final loginSignupScreenSignupNameValidator = localizations.loginSignupScreenSignupNameValidator;
    final loginSignupScreenSignupNameInvalidValidator = localizations.loginSignupScreenSignupNameInvalidValidator;
    final signupNameText = _state.signupNameController.text;
    if (signupNameText.isEmpty) return loginSignupScreenSignupNameValidator;
    if (!RegExp(r'^[a-zA-Z0-9]+$').hasMatch(signupNameText)) return loginSignupScreenSignupNameInvalidValidator;
    return null;
  }

  /// Signup password validator.
  String? signupPasswordValidator() {
    final loginSignupScreenSignupPasswordValidator = localizations.loginSignupScreenSignupPasswordValidator;
    final signupPasswordController = _state.signupPasswordController;
    final signupPasswordText = signupPasswordController.text;
    return signupPasswordText.isEmpty ? loginSignupScreenSignupPasswordValidator : null;
  }

  /// Signup confirm password validator.
  String? signupConfirmPasswordValidator() {
    final loginSignupScreenSignupConfirmPasswordValidator =
        localizations.loginSignupScreenSignupConfirmPasswordValidator;
    final signupPasswordController = _state.signupPasswordController;
    final signupPasswordText = signupPasswordController.text;
    final signupConfirmPasswordController = _state.signupConfirmPasswordController;
    final signupConfirmPasswordText = signupConfirmPasswordController.text;
    return signupPasswordText != signupConfirmPasswordText ? loginSignupScreenSignupConfirmPasswordValidator : null;
  }

  /// Form validation function.
  void validator() {
    final formKey = _state.formKey;
    final formKeyResult = formKey.currentState?.validate() ?? false;
    if (!formKeyResult) return;
    final mode = _state.mode;
    return switch (mode) {
      LoginSignupScreenModeEnum.login => _login(),
      LoginSignupScreenModeEnum.signup => _signup(),
    };
  }

  /// Helper function to handle an async request.
  void _executeRequest(Future<User> Function() request) async {
    try {
      // Start the form process.
      _state.loading = true;

      // Save the user to our "mock" database.
      final user = await request();
      await _appSharedPreferences.saveLoggedInUser(user);

      // Reset the state so that when the user logs out and we go back to this screen, the state is reset.
      _resetState();

      // Refresh router to trigger redirect which will navigate to home.
      AppRouter.replace('/home');

      // Show a success message for extra user feedback.
      final loginSignupScreenSuccessMessage = localizations.loginSignupScreenSuccessMessage;
      SnackBarHelper.show(loginSignupScreenSuccessMessage);
    } on AppException catch (e) {
      SnackBarHelper.hide();
      SnackBarHelper.show(e.message);
    } catch (e) {
      SnackBarHelper.hide();
      SnackBarHelper.show(localizations.errorUnexpectedErrorOccurred(e.toString()));
    } finally {
      _state.loading = false;
    }
  }

  /// Logs in.
  void _login() {
    final loginNameController = _state.loginNameController;
    final loginNameText = loginNameController.text;
    final loginPasswordController = _state.loginPasswordController;
    final loginPasswordText = loginPasswordController.text;
    _executeRequest(() async => await _authService.login(User(name: loginNameText, password: loginPasswordText)));
  }

  /// Signs up.
  void _signup() {
    final signupNameController = _state.signupNameController;
    final signupPasswordController = _state.signupPasswordController;
    final signupNameText = signupNameController.text;
    final signupPasswordText = signupPasswordController.text;
    _executeRequest(() async => await _authService.signup(User(name: signupNameText, password: signupPasswordText)));
  }

  /// Resets the state.
  ///
  /// Used for when the user logs out.
  void _resetState() {
    _state.mode = LoginSignupScreenModeEnum.login;
    _state.loginNameController.clear();
    _state.loginPasswordController.clear();
    _state.signupNameController.clear();
    _state.signupPasswordController.clear();
    _state.signupConfirmPasswordController.clear();
    _state.loginNameFocusNode.requestFocus();
  }

  /// [_state] getter.
  LoginSignupScreenState get state {
    return _state;
  }
}
