part of '../widget/home_screen.dart';

/// Success state of [HomeScreen].
final class _Success extends StatelessWidget {
  /// Default constructor.
  const _Success();

  /// Build function.
  @override
  Widget build(context) {
    final viewModel = context.read<HomeScreenViewModel>();
    final state = viewModel.state;
    final weatherDataController = state.weatherDataController;
    final locationController = state.locationController;

    return ValueListenableBuilder<WeatherData?>(
      valueListenable: weatherDataController,
      builder: (_, weatherData, __) {
        if (weatherData == null) {
          return const _Loading();
        }

        return ValueListenableBuilder<String?>(
          valueListenable: locationController,
          builder: (_, location, ___) {
            return LayoutBuilder(
              builder: (context, constraints) {
                final isLandscape = constraints.maxWidth > constraints.maxHeight;
                return isLandscape ? _SuccessLandscape(weatherData, location) : _SuccessPortrait(weatherData, location);
              },
            );
          },
        );
      },
    );
  }
}
