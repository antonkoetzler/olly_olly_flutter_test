part of '../widget/home_screen.dart';

/// Precipitation field widget.
final class _PrecipitationField extends StatelessWidget {
  /// Default constructor.
  const _PrecipitationField(this._weatherData);

  /// Weather data.
  final WeatherData _weatherData;

  /// Build function.
  @override
  Widget build(context) {
    final homeScreenPrecipitationTitle = localizations.homeScreenPrecipitationTitle;
    final homeScreenPrecipitationUnit = localizations.homeScreenPrecipitationUnit;

    return _WeatherField(
      title: homeScreenPrecipitationTitle,
      data: '${_weatherData.precipitation!.toStringAsFixed(1)}$homeScreenPrecipitationUnit',
    );
  }
}
