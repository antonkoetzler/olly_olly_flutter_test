part of '../widget/login_signup_screen.dart';

/// Buttons of [LoginSignupScreen].
final class _Buttons extends StatelessWidget {
  /// Default constructor.
  const _Buttons(this._mode);

  /// Mode.
  final LoginSignupScreenModeEnum _mode;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<LoginSignupScreenThemeExtension>();
    final buttonsSpacing = themeExtension.buttonsSpacing;
    final themeToggleButtonIconSize = themeExtension.themeToggleButtonIconSize;

    final viewModel = context.read<LoginSignupScreenViewModel>();
    final state = viewModel.state;
    final loadingController = state.loadingController;

    return ValueListenableBuilder(
      valueListenable: loadingController,
      builder: (_, loading, _) => loading
          ? const Loading()
          : IntrinsicHeight(
              child: Row(
                spacing: buttonsSpacing,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(child: _ActionButton(_mode)),
                  Expanded(child: _FormSwitcherButton(_mode)),
                  ThemeToggleButton(iconSize: themeToggleButtonIconSize),
                ],
              ),
            ),
    );
  }
}
