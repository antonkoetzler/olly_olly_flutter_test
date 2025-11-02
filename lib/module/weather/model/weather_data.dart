import 'package:json_annotation/json_annotation.dart';

part 'weather_data.g.dart';

/// Weather data model.
@JsonSerializable()
final class WeatherData {
  /// Default constructor.
  WeatherData({
    required this.temperature,
    required this.windSpeed,
    required this.weatherCode,
    this.humidity,
    this.precipitation,
    this.cloudCover,
    this.temperatureMax,
    this.temperatureMin,
    this.precipitationSum,
  });

  /// From JSON constructor.
  factory WeatherData.fromJson(Map<String, dynamic> json) {
    return _$WeatherDataFromJson(json);
  }

  /// Temperature in Celsius.
  final double temperature;

  /// Wind speed in km/h.
  @JsonKey(name: 'windspeed')
  final double windSpeed;

  /// Weather code.
  @JsonKey(name: 'weathercode')
  final int weatherCode;

  /// Relative humidity in percent.
  @JsonKey(includeFromJson: false, includeToJson: false)
  final double? humidity;

  /// Precipitation in mm.
  @JsonKey(includeFromJson: false, includeToJson: false)
  final double? precipitation;

  /// Cloud cover in percent.
  @JsonKey(includeFromJson: false, includeToJson: false)
  final double? cloudCover;

  /// Maximum temperature in Celsius.
  @JsonKey(includeFromJson: false, includeToJson: false)
  final double? temperatureMax;

  /// Minimum temperature in Celsius.
  @JsonKey(includeFromJson: false, includeToJson: false)
  final double? temperatureMin;

  /// Total precipitation sum in mm.
  @JsonKey(includeFromJson: false, includeToJson: false)
  final double? precipitationSum;

  /// To JSON.
  Map<String, dynamic> toJson() {
    return _$WeatherDataToJson(this);
  }
}
