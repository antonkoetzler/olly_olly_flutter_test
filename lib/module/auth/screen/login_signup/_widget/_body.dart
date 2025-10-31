part of '../widget/login_signup_screen.dart';

/// [Scaffold.body] of [LoginSignupScreen].
final class _Body extends StatelessWidget {
  /// Default constructor.
  const _Body();

  /// Build function.
  @override
  Widget build(context) {
    final viewModel = context.read<LoginSignupScreenViewModel>();
    final state = viewModel.state;
    final modeController = state.modeController;

    final themeExtension = context.resolveThemeExtension<LoginSignupScreenThemeExtension>();
    final bodyPadding = themeExtension.bodyPadding;

    return ValueListenableBuilder(
      valueListenable: modeController,
      builder: (_, mode, _) {
        return Padding(
          padding: bodyPadding,
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [const _Logo(), _Inputs(mode)]),
                  ),
                ),
              ),
              _Buttons(mode),
            ],
          ),
        );
      },
    );
  }
}
