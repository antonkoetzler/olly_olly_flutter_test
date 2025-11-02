import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';

/// Weather service.
@injectable
final class WeatherService {
  /// Default constructor.
  WeatherService();

  /// Gets the weather for the given location.
  Future<WeatherData> getWeather(double latitude, double longitude) async {
    try {
      final url = Uri.parse(
        'https://api.open-meteo.com/v1/forecast?latitude=$latitude&longitude=$longitude&current_weather=true&hourly=temperature_2m,relativehumidity_2m,precipitation,cloudcover&daily=temperature_2m_max,temperature_2m_min,precipitation_sum&timezone=auto',
      );
      final response = await http.get(url).timeout(const Duration(seconds: 30));

      if (response.statusCode == 200) {
        try {
          final json = jsonDecode(response.body) as Map<String, dynamic>;
          final currentWeather = json['current_weather'] as Map<String, dynamic>?;
          if (currentWeather == null) {
            throw NetworkException(localizations.errorInvalidResponseFormat);
          }

          // Extract additional data from hourly and daily
          final hourly = json['hourly'] as Map<String, dynamic>?;
          final daily = json['daily'] as Map<String, dynamic>?;

          final hourlyData = hourly?['time'] as List<dynamic>?;
          final currentTime = currentWeather['time'] as String?;

          double? humidity;
          double? precipitation;
          double? cloudCover;
          double? temperatureMax;
          double? temperatureMin;
          double? precipitationSum;

          // Get current hour's data
          if (hourlyData != null && currentTime != null) {
            final currentIndex = hourlyData.indexOf(currentTime);
            if (currentIndex >= 0) {
              final hourlyRelativeHumidity = hourly?['relativehumidity_2m'] as List<dynamic>?;
              final hourlyPrecipitation = hourly?['precipitation'] as List<dynamic>?;
              final hourlyCloudCover = hourly?['cloudcover'] as List<dynamic>?;

              if (hourlyRelativeHumidity != null && currentIndex < hourlyRelativeHumidity.length) {
                humidity = (hourlyRelativeHumidity[currentIndex] as num?)?.toDouble();
              }
              if (hourlyPrecipitation != null && currentIndex < hourlyPrecipitation.length) {
                precipitation = (hourlyPrecipitation[currentIndex] as num?)?.toDouble();
              }
              if (hourlyCloudCover != null && currentIndex < hourlyCloudCover.length) {
                cloudCover = (hourlyCloudCover[currentIndex] as num?)?.toDouble();
              }
            }
          }

          // Get today's daily data
          if (daily != null) {
            final dailyTemperatureMax = daily['temperature_2m_max'] as List<dynamic>?;
            final dailyTemperatureMin = daily['temperature_2m_min'] as List<dynamic>?;
            final dailyPrecipitationSum = daily['precipitation_sum'] as List<dynamic>?;

            if (dailyTemperatureMax != null && dailyTemperatureMax.isNotEmpty) {
              temperatureMax = (dailyTemperatureMax[0] as num?)?.toDouble();
            }
            if (dailyTemperatureMin != null && dailyTemperatureMin.isNotEmpty) {
              temperatureMin = (dailyTemperatureMin[0] as num?)?.toDouble();
            }
            if (dailyPrecipitationSum != null && dailyPrecipitationSum.isNotEmpty) {
              precipitationSum = (dailyPrecipitationSum[0] as num?)?.toDouble();
            }
          }

          final baseWeatherData = WeatherData.fromJson(currentWeather);
          return WeatherData(
            temperature: baseWeatherData.temperature,
            windSpeed: baseWeatherData.windSpeed,
            weatherCode: baseWeatherData.weatherCode,
            humidity: humidity,
            precipitation: precipitation,
            cloudCover: cloudCover,
            temperatureMax: temperatureMax,
            temperatureMin: temperatureMin,
            precipitationSum: precipitationSum,
          );
        } catch (e) {
          if (e is NetworkException) rethrow;
          throw NetworkException(localizations.errorFailedToParseWeatherData(e.toString()));
        }
      } else {
        throw NetworkException(
          localizations.errorFailedToLoadWeatherData(response.statusCode),
          statusCode: response.statusCode,
        );
      }
    } on NetworkException {
      rethrow;
    } on http.ClientException catch (e) {
      throw NetworkException(localizations.errorNetworkError(e.message));
    } catch (e) {
      throw NetworkException(localizations.errorUnexpectedError(e.toString()));
    }
  }
}
