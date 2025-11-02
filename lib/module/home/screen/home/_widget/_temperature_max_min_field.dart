part of '../widget/home_screen.dart';

/// Temperature max/min field widget.
final class _TemperatureMaxMinField extends StatelessWidget {
  /// Default constructor.
  const _TemperatureMaxMinField(this._weatherData);

  /// Weather data.
  final WeatherData _weatherData;

  /// Build function.
  @override
  Widget build(context) {
    final homeScreenTemperatureUnit = localizations.homeScreenTemperatureUnit;
    final homeScreenMaxTemperatureTitle = localizations.homeScreenMaxTemperatureTitle;
    final homeScreenTemperatureSeparator = localizations.homeScreenTemperatureSeparator;
    final homeScreenMinTemperatureTitle = localizations.homeScreenMinTemperatureTitle;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (_weatherData.temperatureMax != null)
          _WeatherField(
            title: homeScreenMaxTemperatureTitle,
            data: '${_weatherData.temperatureMax!.toStringAsFixed(1)}$homeScreenTemperatureUnit',
          ),
        if (_weatherData.temperatureMax != null && _weatherData.temperatureMin != null)
          _WeatherField(data: homeScreenTemperatureSeparator),
        if (_weatherData.temperatureMin != null)
          _WeatherField(
            title: homeScreenMinTemperatureTitle,
            data: '${_weatherData.temperatureMin!.toStringAsFixed(1)}$homeScreenTemperatureUnit',
          ),
      ],
    );
  }
}
