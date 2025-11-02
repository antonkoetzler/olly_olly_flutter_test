import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';

/// [ValueNotifier] of the selected [ThemeMode].
@singleton
final class ThemeController extends ValueNotifier<bool> {
  /// Default constructor.
  ThemeController(this._sharedPreferences) : super(_sharedPreferences.isDarkMode);

  /// Shared preferences.
  final AppSharedPreferences _sharedPreferences;

  /// Toggle the [ThemeMode].
  void toggle() async {
    await _sharedPreferences.toggleTheme();
    value = _sharedPreferences.isDarkMode;
  }

  /// Getter of if the app is in dark mode.
  bool get isDarkMode {
    return value;
  }
}
