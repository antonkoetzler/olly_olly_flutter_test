part of '../widget/home_screen.dart';

/// Portrait layout for success state.
final class _SuccessPortrait extends StatelessWidget {
  /// Default constructor.
  const _SuccessPortrait(this._weatherData, this._location);

  /// Weather data.
  final WeatherData _weatherData;

  /// Location name.
  final String? _location;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<HomeScreenThemeExtension>();
    final weatherFieldsSpacing = themeExtension.weatherFieldsSpacing;

    return Column(
      spacing: weatherFieldsSpacing,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _TemperatureWithIcon(_weatherData),
        if (_location != null) _LocationField(_location),
        _ConditionField(_weatherData),
        if (_weatherData.temperatureMax != null || _weatherData.temperatureMin != null)
          _TemperatureMaxMinField(_weatherData),
        _WindSpeedField(_weatherData),
        if (_weatherData.humidity != null) _HumidityField(_weatherData),
        if (_weatherData.precipitation != null) _PrecipitationField(_weatherData),
        if (_weatherData.precipitationSum != null) _PrecipitationSumField(_weatherData),
        if (_weatherData.cloudCover != null) _CloudCoverField(_weatherData),
      ],
    );
  }
}
