part of '../widget/home_screen.dart';

/// Landscape layout for success state.
final class _SuccessLandscape extends StatelessWidget {
  /// Default constructor.
  const _SuccessLandscape(this._weatherData, this._location);

  /// Weather data.
  final WeatherData _weatherData;

  /// Location name.
  final String? _location;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<HomeScreenThemeExtension>();
    final landscapeSpacing = themeExtension.landscapeSpacing;
    final weatherFieldsSpacing = themeExtension.weatherFieldsSpacing;

    return Row(
      spacing: landscapeSpacing,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          spacing: weatherFieldsSpacing,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            _TemperatureWithIcon(_weatherData),
            if (_location != null) _LocationField(_location),
            _ConditionField(_weatherData),
          ],
        ),
        Column(
          spacing: weatherFieldsSpacing,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (_weatherData.temperatureMax != null || _weatherData.temperatureMin != null)
              _TemperatureMaxMinField(_weatherData),
            _WindSpeedField(_weatherData),
            if (_weatherData.humidity != null) _HumidityField(_weatherData),
            if (_weatherData.precipitation != null) _PrecipitationField(_weatherData),
            if (_weatherData.precipitationSum != null) _PrecipitationSumField(_weatherData),
            if (_weatherData.cloudCover != null) _CloudCoverField(_weatherData),
          ],
        ),
      ],
    );
  }
}
