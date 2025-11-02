// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get loginSignupScreenLoginNameLabel => 'Name';

  @override
  String get loginSignupScreenLoginPasswordLabel => 'Password';

  @override
  String get loginSignupScreenLoginActionButtonLabel => 'Enter';

  @override
  String get loginSignupScreenSignupActionButtonLabel => 'Register';

  @override
  String get loginSignupScreenLoginFormSwitcherButtonLabel => 'Signup';

  @override
  String get loginSignupScreenSignupFormSwitcherButtonLabel => 'Login';

  @override
  String get loginSignupScreenLoginNameValidator => 'Name is required';

  @override
  String get loginSignupScreenLoginPasswordValidator => 'Password is required';

  @override
  String get loginSignupScreenSignupNameLabel => 'Name';

  @override
  String get loginSignupScreenSignupPasswordLabel => 'Password';

  @override
  String get loginSignupScreenSignupConfirmPasswordLabel => 'Confirm password';

  @override
  String get loginSignupScreenSignupNameValidator => 'Name is required';

  @override
  String get loginSignupScreenSignupNameInvalidValidator => 'Name must contain only letters and numbers';

  @override
  String get loginSignupScreenSignupPasswordValidator => 'Password is required';

  @override
  String get loginSignupScreenSignupConfirmPasswordValidator => 'Passwords do not match';

  @override
  String get loginSignupScreenSuccessMessage => 'Logged in successfully!';

  @override
  String homeScreenAppBarTitle(String name) {
    return 'Welcome, $name';
  }

  @override
  String get homeScreenLocationPermissionStatusDisabledLabel => 'Location services are disabled';

  @override
  String get homeScreenLocationPermissionStatusDeniedLabel => 'Location permissions are denied';

  @override
  String get homeScreenLocationPermissionStatusDeniedForeverLabel => 'Location permissions are permanently denied';

  @override
  String get homeScreenErrorRetryButtonText => 'Retry';

  @override
  String get errorInvalidUser => 'Invalid user.';

  @override
  String get errorUserAlreadyExists => 'User already exists.';

  @override
  String errorLoginFailed(String error) {
    return 'Login failed: $error';
  }

  @override
  String errorSignupFailed(String error) {
    return 'Signup failed: $error';
  }

  @override
  String errorLogoutFailed(String error) {
    return 'Logout failed: $error';
  }

  @override
  String get errorInvalidResponseFormat => 'Invalid response format: missing current_weather data';

  @override
  String errorFailedToParseWeatherData(String error) {
    return 'Failed to parse weather data: $error';
  }

  @override
  String errorFailedToLoadWeatherData(int statusCode) {
    return 'Failed to load weather data: HTTP $statusCode';
  }

  @override
  String errorNetworkError(String error) {
    return 'Network error: $error';
  }

  @override
  String errorUnexpectedError(String error) {
    return 'Unexpected error: $error';
  }

  @override
  String errorUnexpectedErrorOccurred(String error) {
    return 'An unexpected error occurred: $error';
  }

  @override
  String get weatherConditionSunny => 'Sunny';

  @override
  String get weatherConditionPartlyCloudy => 'Partly Cloudy';

  @override
  String get weatherConditionCloudy => 'Cloudy';

  @override
  String get weatherConditionFoggy => 'Foggy';

  @override
  String get weatherConditionDrizzle => 'Drizzle';

  @override
  String get weatherConditionRain => 'Raining';

  @override
  String get weatherConditionSnow => 'Snowing';

  @override
  String get weatherConditionThunderstorm => 'Thunderstorm';

  @override
  String get weatherConditionUnknown => 'Unknown';

  @override
  String get homeScreenTemperatureUnit => '°C';

  @override
  String get homeScreenConditionTitle => 'Condition: ';

  @override
  String get homeScreenMaxTemperatureTitle => 'Max: ';

  @override
  String get homeScreenMinTemperatureTitle => 'Min: ';

  @override
  String get homeScreenTemperatureSeparator => ' / ';

  @override
  String get homeScreenWindSpeedTitle => 'Wind Speed: ';

  @override
  String get homeScreenWindSpeedUnit => ' km/h';

  @override
  String get homeScreenHumidityTitle => 'Humidity: ';

  @override
  String get homeScreenHumidityUnit => '%';

  @override
  String get homeScreenPrecipitationTitle => 'Precipitation: ';

  @override
  String get homeScreenPrecipitationUnit => ' mm';

  @override
  String get homeScreenPrecipitationSumTitle => 'Precipitation Sum: ';

  @override
  String get homeScreenPrecipitationSumUnit => ' mm';

  @override
  String get homeScreenCloudCoverTitle => 'Cloud Cover: ';

  @override
  String get homeScreenCloudCoverUnit => '%';

  @override
  String get homeScreenWeatherCodeTitle => 'Weather Code: ';
}
