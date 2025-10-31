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

    return IntrinsicHeight(
      child: Row(
        spacing: buttonsSpacing,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: _ActionButton(_mode)),
          const _ThemeToggleButton(),
        ],
      ),
    );
  }
}
