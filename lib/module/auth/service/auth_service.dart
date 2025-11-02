import 'dart:async';

import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';

/// Auth service.
@injectable
final class AuthService {
  /// Default constructor.
  AuthService(this._sharedPreferences);

  /// [AppDatabase].
  final AppSharedPreferences _sharedPreferences;

  /// Logs in.
  Future<User> login(User user) async {
    try {
      final users = _sharedPreferences.users;
      final storedUser = users.firstWhereOrNull((u) => u.name == user.name);
      if (storedUser == null) throw AuthException(localizations.errorInvalidUser);
      if (!PasswordHelper.verify(user.password, storedUser.password)) {
        throw AuthException(localizations.errorInvalidUser);
      }
      return storedUser;
    } on AuthException {
      rethrow;
    } catch (e) {
      throw AuthException(localizations.errorLoginFailed(e.toString()));
    }
  }

  /// Signs up.
  Future<User> signup(User user) async {
    try {
      final users = _sharedPreferences.users;
      if (users.any((u) => u.name == user.name)) {
        throw AuthException(localizations.errorUserAlreadyExists);
      }
      final hashedPassword = PasswordHelper.hash(user.password);
      final userWithHashedPassword = User(name: user.name, password: hashedPassword);
      await _sharedPreferences.insertUser(userWithHashedPassword);
      return userWithHashedPassword;
    } on AuthException {
      rethrow;
    } catch (e) {
      throw AuthException(localizations.errorSignupFailed(e.toString()));
    }
  }

  /// Logs out.
  Future<void> logout() async {
    try {
      await _sharedPreferences.removeLoggedInUser();
    } catch (e) {
      throw AuthException(localizations.errorLogoutFailed(e.toString()));
    }
  }
}
