import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

/// [ValueNotifier] of the selected [ThemeMode].
@singleton
final class ThemeModeController extends ValueNotifier<ThemeMode> {
  /// Default constructor.
  ThemeModeController() : super(ThemeMode.system);

  /// Toggle the [ThemeMode].
  void toggle() {
    value = value == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
  }
}
