part of '../widget/home_screen.dart';

/// Wind speed field widget.
final class _WindSpeedField extends StatelessWidget {
  /// Default constructor.
  const _WindSpeedField(this._weatherData);

  /// Weather data.
  final WeatherData _weatherData;

  /// Build function.
  @override
  Widget build(context) {
    final homeScreenWindSpeedTitle = localizations.homeScreenWindSpeedTitle;
    final homeScreenWindSpeedUnit = localizations.homeScreenWindSpeedUnit;

    return _WeatherField(
      title: homeScreenWindSpeedTitle,
      data: '${_weatherData.windSpeed.toStringAsFixed(1)}$homeScreenWindSpeedUnit',
    );
  }
}
