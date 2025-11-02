part of 'home_screen_view_model.dart';

/// State of [HomeScreenViewModel].
final class HomeScreenState {
  /// [ValueNotifier] controlling the status of getting the location permission.
  final _locationPermissionStatusController = ValueNotifier(HomeScreenLocationPermissionStatusEnum.loading);

  /// [ValueNotifier] controlling the weather data.
  final _weatherDataController = ValueNotifier<WeatherData?>(null);

  /// [ValueNotifier] controlling the location name.
  final _locationController = ValueNotifier<String?>(null);

  /// [Position] of the user's location.
  Position? position;

  /// Dispose function.
  void dispose() {
    _locationPermissionStatusController.dispose();
    _weatherDataController.dispose();
    _locationController.dispose();
  }

  /// [_locationPermissionStatusController] getter.
  ValueNotifier<HomeScreenLocationPermissionStatusEnum> get locationPermissionStatusController {
    return _locationPermissionStatusController;
  }

  /// [_locationPermissionStatusController] getter.
  HomeScreenLocationPermissionStatusEnum get locationPermissionStatus {
    return _locationPermissionStatusController.value;
  }

  /// [_locationPermissionStatusController] setter.
  set locationPermissionStatus(HomeScreenLocationPermissionStatusEnum value) {
    _locationPermissionStatusController.value = value;
  }

  /// [_weatherDataController] getter.
  ValueNotifier<WeatherData?> get weatherDataController {
    return _weatherDataController;
  }

  /// [_weatherDataController] getter.
  WeatherData? get weatherData {
    return _weatherDataController.value;
  }

  /// [_weatherDataController] setter.
  set weatherData(WeatherData? value) {
    _weatherDataController.value = value;
  }

  /// [_locationController] getter.
  ValueNotifier<String?> get locationController {
    return _locationController;
  }

  /// [_locationController] getter.
  String? get location {
    return _locationController.value;
  }

  /// [_locationController] setter.
  set location(String? value) {
    _locationController.value = value;
  }
}
