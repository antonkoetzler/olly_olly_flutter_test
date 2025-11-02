part of '../widget/home_screen.dart';

/// Loading widget.
final class _Loading extends StatelessWidget {
  /// Default constructor.
  const _Loading();

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<HomeScreenThemeExtension>();
    final loadingSize = themeExtension.loadingSize;
    return Loading(size: loadingSize);
  }
}
