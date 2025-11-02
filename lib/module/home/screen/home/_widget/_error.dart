part of '../widget/home_screen.dart';

/// Error of [HomeScreen].
final class _Error extends StatelessWidget {
  /// Default constructor.
  const _Error(this._label);

  /// Label.
  final String _label;

  /// Build function.
  @override
  Widget build(context) {
    final homeScreenErrorRetryButtonText = localizations.homeScreenErrorRetryButtonText;
    final viewModel = context.read<HomeScreenViewModel>();
    final init = viewModel.init;

    final themeExtension = context.resolveThemeExtension<HomeScreenThemeExtension>();
    final errorSpacing = themeExtension.errorSpacing;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: errorSpacing,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_label),
            IntrinsicWidth(
              child: Button(text: homeScreenErrorRetryButtonText, onTapUp: init),
            ),
          ],
        ),
      ),
    );
  }
}
