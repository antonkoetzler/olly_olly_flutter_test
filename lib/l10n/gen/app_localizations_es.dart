// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get loginSignupScreenLoginNameLabel => 'Nombre de usuario';

  @override
  String get loginSignupScreenLoginPasswordLabel => 'Contraseña';

  @override
  String get loginSignupScreenLoginActionButtonLabel => 'Entrar';

  @override
  String get loginSignupScreenSignupActionButtonLabel => 'Registrar';

  @override
  String get loginSignupScreenLoginFormSwitcherButtonLabel => 'Registrarse';

  @override
  String get loginSignupScreenSignupFormSwitcherButtonLabel => 'Iniciar sesión';

  @override
  String get loginSignupScreenLoginNameValidator => 'El nombre de usuario es obligatorio';

  @override
  String get loginSignupScreenLoginPasswordValidator => 'La contraseña es obligatoria';

  @override
  String get loginSignupScreenSignupNameLabel => 'Nombre de usuario';

  @override
  String get loginSignupScreenSignupPasswordLabel => 'Contraseña';

  @override
  String get loginSignupScreenSignupConfirmPasswordLabel => 'Confirmar contraseña';

  @override
  String get loginSignupScreenSignupNameValidator => 'El nombre es obligatorio';

  @override
  String get loginSignupScreenSignupNameInvalidValidator => 'El nombre solo puede contener letras y números';

  @override
  String get loginSignupScreenSignupPasswordValidator => 'La contraseña es obligatoria';

  @override
  String get loginSignupScreenSignupConfirmPasswordValidator => 'Las contraseñas no coinciden';

  @override
  String get loginSignupScreenSuccessMessage => '¡Inicio de sesión exitoso!';

  @override
  String homeScreenAppBarTitle(String name) {
    return 'Bienvenido, $name';
  }

  @override
  String get homeScreenLocationPermissionStatusDisabledLabel => 'Los servicios de ubicación están deshabilitados';

  @override
  String get homeScreenLocationPermissionStatusDeniedLabel => 'Los permisos de ubicación están denegados';

  @override
  String get homeScreenLocationPermissionStatusDeniedForeverLabel =>
      'Los permisos de ubicación están permanentemente denegados';

  @override
  String get homeScreenErrorRetryButtonText => 'Reintentar';

  @override
  String get errorInvalidUser => 'Usuario inválido.';

  @override
  String get errorUserAlreadyExists => 'El usuario ya existe.';

  @override
  String errorLoginFailed(String error) {
    return 'Error al iniciar sesión: $error';
  }

  @override
  String errorSignupFailed(String error) {
    return 'Error al registrarse: $error';
  }

  @override
  String errorLogoutFailed(String error) {
    return 'Error al cerrar sesión: $error';
  }

  @override
  String get errorInvalidResponseFormat => 'Formato de respuesta inválido: faltan datos de current_weather';

  @override
  String errorFailedToParseWeatherData(String error) {
    return 'Error al analizar datos meteorológicos: $error';
  }

  @override
  String errorFailedToLoadWeatherData(int statusCode) {
    return 'Error al cargar datos meteorológicos: HTTP $statusCode';
  }

  @override
  String errorNetworkError(String error) {
    return 'Error de red: $error';
  }

  @override
  String errorUnexpectedError(String error) {
    return 'Error inesperado: $error';
  }

  @override
  String errorUnexpectedErrorOccurred(String error) {
    return 'Ocurrió un error inesperado: $error';
  }

  @override
  String get weatherConditionSunny => 'Soleado';

  @override
  String get weatherConditionPartlyCloudy => 'Parcialmente Nublado';

  @override
  String get weatherConditionCloudy => 'Nublado';

  @override
  String get weatherConditionFoggy => 'Nebuloso';

  @override
  String get weatherConditionDrizzle => 'Llovizna';

  @override
  String get weatherConditionRain => 'Lloviendo';

  @override
  String get weatherConditionSnow => 'Nevando';

  @override
  String get weatherConditionThunderstorm => 'Tormenta';

  @override
  String get weatherConditionUnknown => 'Desconocido';

  @override
  String get homeScreenTemperatureUnit => '°C';

  @override
  String get homeScreenConditionTitle => 'Condición: ';

  @override
  String get homeScreenMaxTemperatureTitle => 'Máx: ';

  @override
  String get homeScreenMinTemperatureTitle => 'Mín: ';

  @override
  String get homeScreenTemperatureSeparator => ' / ';

  @override
  String get homeScreenWindSpeedTitle => 'Velocidad del Viento: ';

  @override
  String get homeScreenWindSpeedUnit => ' km/h';

  @override
  String get homeScreenHumidityTitle => 'Humedad: ';

  @override
  String get homeScreenHumidityUnit => '%';

  @override
  String get homeScreenPrecipitationTitle => 'Precipitación: ';

  @override
  String get homeScreenPrecipitationUnit => ' mm';

  @override
  String get homeScreenPrecipitationSumTitle => 'Suma de Precipitación: ';

  @override
  String get homeScreenPrecipitationSumUnit => ' mm';

  @override
  String get homeScreenCloudCoverTitle => 'Cobertura de Nubes: ';

  @override
  String get homeScreenCloudCoverUnit => '%';

  @override
  String get homeScreenWeatherCodeTitle => 'Código Meteorológico: ';
}
