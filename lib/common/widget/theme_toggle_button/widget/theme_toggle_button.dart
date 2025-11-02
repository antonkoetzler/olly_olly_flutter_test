import 'package:flutter/material.dart';
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';

/// Theme toggle button.
final class ThemeToggleButton extends StatelessWidget {
  /// Default constructor.
  const ThemeToggleButton({super.key, this.iconSize});

  /// Icon size.
  final double? iconSize;

  /// Build function.
  @override
  Widget build(context) {
    final themeController = getIt<ThemeController>();

    final themeExtension = context.resolveThemeExtension<ThemeToggleButtonThemeExtension>();
    final iconSize = this.iconSize ?? themeExtension.iconSize;

    return ValueListenableBuilder(
      valueListenable: themeController,
      builder: (_, isDarkMode, _) {
        return IntrinsicWidth(
          child: Button(
            icon: isDarkMode ? Icons.dark_mode : Icons.light_mode,
            iconSize: iconSize,
            onTapUp: themeController.toggle,
          ),
        );
      },
    );
  }
}
