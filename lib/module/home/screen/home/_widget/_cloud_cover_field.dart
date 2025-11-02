part of '../widget/home_screen.dart';

/// Cloud cover field widget.
final class _CloudCoverField extends StatelessWidget {
  /// Default constructor.
  const _CloudCoverField(this._weatherData);

  /// Weather data.
  final WeatherData _weatherData;

  /// Build function.
  @override
  Widget build(context) {
    final homeScreenCloudCoverTitle = localizations.homeScreenCloudCoverTitle;
    final homeScreenCloudCoverUnit = localizations.homeScreenCloudCoverUnit;

    return _WeatherField(
      title: homeScreenCloudCoverTitle,
      data: '${_weatherData.cloudCover!.toStringAsFixed(1)}$homeScreenCloudCoverUnit',
    );
  }
}
