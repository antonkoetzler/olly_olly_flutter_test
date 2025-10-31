import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';

part 'login_signup_screen_state.dart';

/// View model of [LoginSignupScreen].
@injectable
final class LoginSignupScreenViewModel {
  /// Default constructor.
  LoginSignupScreenViewModel(this.themeModeController);

  /// [ThemeModeController].
  final ThemeModeController themeModeController;

  /// State.
  final _state = LoginSignupScreenState();

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [_state] getter.
  LoginSignupScreenState get state {
    return _state;
  }
}
