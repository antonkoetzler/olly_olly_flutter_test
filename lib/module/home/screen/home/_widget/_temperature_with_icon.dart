part of '../widget/home_screen.dart';

/// Temperature with icon widget.
final class _TemperatureWithIcon extends StatelessWidget {
  /// Default constructor.
  const _TemperatureWithIcon(this._weatherData);

  /// Weather data.
  final WeatherData _weatherData;

  /// Build function.
  @override
  Widget build(context) {
    final homeScreenTemperatureUnit = localizations.homeScreenTemperatureUnit;
    final viewModel = context.read<HomeScreenViewModel>();
    final weatherIcon = viewModel.getWeatherIcon(_weatherData);

    final themeExtension = context.resolveThemeExtension<HomeScreenThemeExtension>();
    final weatherIconSize = themeExtension.weatherIconSize;
    final temperatureTextStyle = themeExtension.temperatureTextStyle;
    final temperatureData = '${_weatherData.temperature.toStringAsFixed(1)}$homeScreenTemperatureUnit';
    final temperatureWithIconSpacing = themeExtension.temperatureWithIconSpacing;

    return Row(
      spacing: temperatureWithIconSpacing,
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(weatherIcon, size: weatherIconSize),
        Text(temperatureData, style: temperatureTextStyle),
      ],
    );
  }
}
