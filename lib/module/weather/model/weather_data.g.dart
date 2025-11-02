// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherData _$WeatherDataFromJson(Map<String, dynamic> json) => WeatherData(
  temperature: (json['temperature'] as num).toDouble(),
  windSpeed: (json['windspeed'] as num).toDouble(),
  weatherCode: (json['weathercode'] as num).toInt(),
);

Map<String, dynamic> _$WeatherDataToJson(WeatherData instance) => <String, dynamic>{
  'temperature': instance.temperature,
  'windspeed': instance.windSpeed,
  'weathercode': instance.weatherCode,
};
