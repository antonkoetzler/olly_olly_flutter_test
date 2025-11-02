part of '../widget/home_screen.dart';

/// Precipitation sum field widget.
final class _PrecipitationSumField extends StatelessWidget {
  /// Default constructor.
  const _PrecipitationSumField(this._weatherData);

  /// Weather data.
  final WeatherData _weatherData;

  /// Build function.
  @override
  Widget build(context) {
    final homeScreenPrecipitationSumTitle = localizations.homeScreenPrecipitationSumTitle;
    final homeScreenPrecipitationSumUnit = localizations.homeScreenPrecipitationSumUnit;

    return _WeatherField(
      title: homeScreenPrecipitationSumTitle,
      data: '${_weatherData.precipitationSum!.toStringAsFixed(1)}$homeScreenPrecipitationSumUnit',
    );
  }
}
