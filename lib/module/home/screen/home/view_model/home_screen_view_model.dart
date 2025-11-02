import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';

part 'home_screen_state.dart';

/// View model of [HomeScreen].
@injectable
final class HomeScreenViewModel {
  /// Default constructor.
  HomeScreenViewModel(this._authService, this._weatherService, this._locationService);

  /// Auth service.
  final AuthService _authService;

  /// Weather service.
  final WeatherService _weatherService;

  /// Location service.
  final LocationService _locationService;

  /// State.
  final _state = HomeScreenState();

  /// Get's the user's location.
  void init() async {
    await _setupLocationPermission();
    // Run city name and weather data in parallel since they both only need position
    if (_state.position != null) {
      await Future.wait([_setupCityName(), _setupWeatherData()]);
    }
  }

  /// Logs out.
  Future<void> logout() async {
    try {
      await _authService.logout();
      AppRouter.replace('/');
    } on AppException catch (e) {
      SnackBarHelper.show(e.message);
    } catch (e) {
      SnackBarHelper.show(localizations.errorLogoutFailed(e.toString()));
    }
  }

  /// Setup location permission.
  Future<void> _setupLocationPermission() async {
    try {
      // Checks if the location service is enabled.
      final serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        _state.locationPermissionStatus = HomeScreenLocationPermissionStatusEnum.disabled;
        return;
      }

      // Checks if the location permission is granted.
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        // Requests the location permission.
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          _state.locationPermissionStatus = HomeScreenLocationPermissionStatusEnum.denied;
          return;
        }
      }

      // Checks if the location permission is denied forever.
      if (permission == LocationPermission.deniedForever) {
        _state.locationPermissionStatus = HomeScreenLocationPermissionStatusEnum.deniedForever;
        return;
      }

      // Gets the current position.
      _state.locationPermissionStatus = HomeScreenLocationPermissionStatusEnum.loading;

      Position? position;

      // On web, getLastKnownPosition() is not supported, so skip it
      if (!PlatformHelper.isWeb) {
        // Try to get last known position first for faster initial load
        try {
          position = await Geolocator.getLastKnownPosition();
        } catch (_) {
          // Ignore if last known position is unavailable
        }
      }

      // If no cached position or want fresh data, get current position with lower accuracy for speed
      // On web, add a small delay after permission grant and use longer timeout due to browser quirks
      if (position == null) {
        if (PlatformHelper.isWeb) {
          // Web browsers sometimes need a moment after permission is granted before
          // getCurrentPosition() works reliably. Add a small delay.
          await Future.delayed(const Duration(milliseconds: 300));
        }

        position = await Geolocator.getCurrentPosition(
          locationSettings: const LocationSettings(accuracy: LocationAccuracy.low),
        ).timeout(const Duration(seconds: 10));
      }

      _state.position = position;
      _state.locationPermissionStatus = HomeScreenLocationPermissionStatusEnum.granted;
    } catch (e) {
      SnackBarHelper.show(localizations.errorUnexpectedErrorOccurred(e.toString()));
      _state.locationPermissionStatus = HomeScreenLocationPermissionStatusEnum.disabled;
    }
  }

  /// Setup city name.
  Future<void> _setupCityName() async {
    final position = _state.position;
    if (position == null) return;

    _state.location = await _locationService.getLocationName(position.latitude, position.longitude);
  }

  /// Setup weather data.
  Future<void> _setupWeatherData() async {
    if (_state.position == null) return;
    try {
      final weatherData = await _weatherService.getWeather(_state.position!.latitude, _state.position!.longitude);
      _state.weatherData = weatherData;
    } on NetworkException {
      // Weather fetch failed, but don't block the UI
      _state.weatherData = null;
    } catch (_) {
      // Unexpected error, don't block the UI
      _state.weatherData = null;
    }
  }

  /// Gets the weather condition based on weather data.
  WeatherConditionEnum getWeatherCondition(WeatherData? weatherData) {
    if (weatherData == null) return WeatherConditionEnum.unknown;
    final weatherCode = weatherData.weatherCode;
    final precipitation = weatherData.precipitation ?? 0;
    final temperature = weatherData.temperature;

    // Use weather code as primary indicator (WMO codes)
    if (weatherCode == 0) {
      // Clear sky
      return WeatherConditionEnum.sunny;
    } else if (weatherCode >= 1 && weatherCode <= 3) {
      // Partly cloudy to cloudy
      if (weatherCode == 1) {
        return WeatherConditionEnum.partlyCloudy;
      }
      return WeatherConditionEnum.cloudy;
    } else if (weatherCode == 45 || weatherCode == 48) {
      // Fog
      return WeatherConditionEnum.foggy;
    } else if (weatherCode >= 51 && weatherCode <= 57) {
      // Drizzle
      return WeatherConditionEnum.drizzle;
    } else if (weatherCode >= 61 && weatherCode <= 67) {
      // Rain
      return WeatherConditionEnum.rain;
    } else if (weatherCode >= 71 && weatherCode <= 77) {
      // Snow
      return WeatherConditionEnum.snow;
    } else if (weatherCode >= 80 && weatherCode <= 82) {
      // Rain showers
      return WeatherConditionEnum.rain;
    } else if (weatherCode >= 85 && weatherCode <= 86) {
      // Snow showers
      return WeatherConditionEnum.snow;
    } else if (weatherCode >= 95 && weatherCode <= 99) {
      // Thunderstorm
      return WeatherConditionEnum.thunderstorm;
    }

    // Fallback: use precipitation and temperature if weather code is unknown
    if (precipitation > 0) {
      if (temperature <= 0) {
        return WeatherConditionEnum.snow;
      }
      return WeatherConditionEnum.rain;
    }

    return WeatherConditionEnum.unknown;
  }

  /// Gets a human-readable description of the weather condition.
  String getWeatherConditionDescription(WeatherConditionEnum condition) {
    return switch (condition) {
      WeatherConditionEnum.sunny => localizations.weatherConditionSunny,
      WeatherConditionEnum.partlyCloudy => localizations.weatherConditionPartlyCloudy,
      WeatherConditionEnum.cloudy => localizations.weatherConditionCloudy,
      WeatherConditionEnum.foggy => localizations.weatherConditionFoggy,
      WeatherConditionEnum.drizzle => localizations.weatherConditionDrizzle,
      WeatherConditionEnum.rain => localizations.weatherConditionRain,
      WeatherConditionEnum.snow => localizations.weatherConditionSnow,
      WeatherConditionEnum.thunderstorm => localizations.weatherConditionThunderstorm,
      WeatherConditionEnum.unknown => localizations.weatherConditionUnknown,
    };
  }

  /// Gets the weather icon based on weather data.
  IconData getWeatherIcon(WeatherData? weatherData) {
    if (weatherData == null) return Icons.cloud;
    final condition = getWeatherCondition(weatherData);
    return switch (condition) {
      WeatherConditionEnum.sunny => Icons.wb_sunny,
      WeatherConditionEnum.partlyCloudy => Icons.wb_cloudy,
      WeatherConditionEnum.cloudy => Icons.cloud,
      WeatherConditionEnum.foggy => Icons.foggy,
      WeatherConditionEnum.drizzle => Icons.grain,
      WeatherConditionEnum.rain => Icons.umbrella,
      WeatherConditionEnum.snow => Icons.ac_unit,
      WeatherConditionEnum.thunderstorm => Icons.flash_on,
      WeatherConditionEnum.unknown => Icons.cloud,
    };
  }

  /// [_state] getter.
  HomeScreenState get state {
    return _state;
  }
}
