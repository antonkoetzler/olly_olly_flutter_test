part of '../widget/home_screen.dart';

/// Humidity field widget.
final class _HumidityField extends StatelessWidget {
  /// Default constructor.
  const _HumidityField(this._weatherData);

  /// Weather data.
  final WeatherData _weatherData;

  /// Build function.
  @override
  Widget build(context) {
    final homeScreenHumidityTitle = localizations.homeScreenHumidityTitle;
    final homeScreenHumidityUnit = localizations.homeScreenHumidityUnit;

    return _WeatherField(
      title: homeScreenHumidityTitle,
      data: '${_weatherData.humidity!.toStringAsFixed(1)}$homeScreenHumidityUnit',
    );
  }
}
