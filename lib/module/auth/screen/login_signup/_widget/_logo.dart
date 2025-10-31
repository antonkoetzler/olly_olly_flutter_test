part of '../widget/login_signup_screen.dart';

/// Logo of [LoginSignupScreen].
final class _Logo extends StatelessWidget {
  /// Default constructor.
  const _Logo();

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<LoginSignupScreenThemeExtension>();
    final logoSize = themeExtension.logoSize;
    return Icon(Icons.cloud, size: logoSize);
  }
}
