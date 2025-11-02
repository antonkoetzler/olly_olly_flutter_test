import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Shared preferences singleton.
///
/// NOTE: Not an elegant solution, but this is only used to create a local database.
@singleton
final class AppSharedPreferences {
  /// Key for dark mode.
  static const isDarkModeKey = 'isDarkMode';

  /// Key for logged in user.
  static const loggedInUserKey = 'loggedInUser';

  /// Key for users.
  static const usersKey = 'users';

  /// SharedPreferences instance.
  final SharedPreferences _sharedPreferencesInstance;

  /// Constructor that accepts SharedPreferences instance.
  AppSharedPreferences(this._sharedPreferencesInstance) {
    // Initialize default values synchronously
    if (!_sharedPreferencesInstance.containsKey(isDarkModeKey)) {
      _sharedPreferencesInstance.setBool(isDarkModeKey, true);
    }
  }

  /// Toggles the theme mode.
  Future<void> toggleTheme() async {
    final isDarkMode = _sharedPreferencesInstance.getBool(isDarkModeKey) ?? false;
    await _sharedPreferencesInstance.setBool(isDarkModeKey, !isDarkMode);
  }

  /// Saves all users.
  Future<void> _saveUsers(List<User> users) async {
    final usersJson = users.map((u) => u.toJson()).toList();
    await _sharedPreferencesInstance.setString(usersKey, jsonEncode(usersJson));
  }

  /// Inserts a single user.
  Future<void> insertUser(User user) async {
    final users = List<User>.from(this.users);
    users.add(user);
    await _saveUsers(users);
  }

  /// Saves the logged in user.
  Future<void> saveLoggedInUser(User user) async {
    await _sharedPreferencesInstance.setString(loggedInUserKey, jsonEncode(user.toJson()));
  }

  /// Removes the logged in user.
  Future<void> removeLoggedInUser() async {
    await _sharedPreferencesInstance.remove(loggedInUserKey);
  }

  /// Gets the theme mode.
  bool get isDarkMode {
    return _sharedPreferencesInstance.getBool(isDarkModeKey) ?? false;
  }

  /// Gets all users.
  List<User> get users {
    final usersJson = _sharedPreferencesInstance.getString('users');
    if (usersJson == null) return [];
    final List<dynamic> usersList = jsonDecode(usersJson);
    return usersList.map((json) => User.fromJson(json as Map<String, dynamic>)).toList();
  }

  /// Gets the logged in user.
  User? get loggedInUser {
    final userJson = _sharedPreferencesInstance.getString(loggedInUserKey);
    if (userJson == null) return null;
    return User.fromJson(jsonDecode(userJson) as Map<String, dynamic>);
  }
}
