part of '../widget/home_screen.dart';

/// Logout button of [HomeScreen].
final class _LogoutButton extends StatelessWidget {
  /// Default constructor.
  const _LogoutButton();

  /// Build function.
  @override
  Widget build(context) {
    final themeToggleButtonThemeExtension = context.resolveThemeExtension<ThemeToggleButtonThemeExtension>();
    final iconSize = themeToggleButtonThemeExtension.iconSize;

    final viewModel = context.read<HomeScreenViewModel>();
    final logout = viewModel.logout;

    return Button(icon: Icons.logout, iconSize: iconSize, onTapUp: logout);
  }
}
