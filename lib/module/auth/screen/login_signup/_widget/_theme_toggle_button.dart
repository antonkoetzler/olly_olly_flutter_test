part of '../widget/login_signup_screen.dart';

/// Theme toggle button of [LoginSignupScreen].
final class _ThemeToggleButton extends StatelessWidget {
  /// Default constructor.
  const _ThemeToggleButton();

  /// Build function.
  @override
  Widget build(context) {
    final viewModel = context.read<LoginSignupScreenViewModel>();
    final themeModeController = viewModel.themeModeController;

    final themeExtension = context.resolveThemeExtension<LoginSignupScreenThemeExtension>();
    final themeToggleButtonIconSize = themeExtension.themeToggleButtonIconSize;

    return ValueListenableBuilder(
      valueListenable: themeModeController,
      builder: (_, themeMode, _) {
        final brightness = themeMode.getBrightness(context);

        return Button(
          icon: switch (brightness) {
            Brightness.dark => Icons.dark_mode,
            Brightness.light => Icons.light_mode,
          },
          iconSize: themeToggleButtonIconSize,
          onTapUp: themeModeController.toggle,
        );
      },
    );
  }
}
