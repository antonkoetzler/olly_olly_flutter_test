// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get loginSignupScreenLoginNameLabel => 'Nome';

  @override
  String get loginSignupScreenLoginPasswordLabel => 'Senha';

  @override
  String get loginSignupScreenLoginActionButtonLabel => 'Entrar';

  @override
  String get loginSignupScreenSignupActionButtonLabel => 'Registrar';

  @override
  String get loginSignupScreenLoginFormSwitcherButtonLabel => 'Cadastrar';

  @override
  String get loginSignupScreenSignupFormSwitcherButtonLabel => 'Entrar';

  @override
  String get loginSignupScreenLoginNameValidator => 'Nome é obrigatório';

  @override
  String get loginSignupScreenLoginPasswordValidator => 'Senha é obrigatória';

  @override
  String get loginSignupScreenSignupNameLabel => 'Nome';

  @override
  String get loginSignupScreenSignupPasswordLabel => 'Senha';

  @override
  String get loginSignupScreenSignupConfirmPasswordLabel => 'Confirmar senha';

  @override
  String get loginSignupScreenSignupNameValidator => 'Nome é obrigatório';

  @override
  String get loginSignupScreenSignupNameInvalidValidator => 'O nome deve conter apenas letras e números';

  @override
  String get loginSignupScreenSignupPasswordValidator => 'Senha é obrigatória';

  @override
  String get loginSignupScreenSignupConfirmPasswordValidator => 'As senhas não coincidem';

  @override
  String get loginSignupScreenSuccessMessage => 'Login realizado com sucesso!';

  @override
  String homeScreenAppBarTitle(String name) {
    return 'Bem-vindo, $name';
  }

  @override
  String get homeScreenLocationPermissionStatusDisabledLabel => 'Os serviços de localização estão desabilitados';

  @override
  String get homeScreenLocationPermissionStatusDeniedLabel => 'As permissões de localização estão negadas';

  @override
  String get homeScreenLocationPermissionStatusDeniedForeverLabel =>
      'As permissões de localização estão permanentemente negadas';

  @override
  String get homeScreenErrorRetryButtonText => 'Tentar novamente';

  @override
  String get errorInvalidUser => 'Usuário inválido.';

  @override
  String get errorUserAlreadyExists => 'Usuário já existe.';

  @override
  String errorLoginFailed(String error) {
    return 'Falha no login: $error';
  }

  @override
  String errorSignupFailed(String error) {
    return 'Falha no cadastro: $error';
  }

  @override
  String errorLogoutFailed(String error) {
    return 'Falha no logout: $error';
  }

  @override
  String get errorInvalidResponseFormat => 'Formato de resposta inválido: dados de current_weather ausentes';

  @override
  String errorFailedToParseWeatherData(String error) {
    return 'Falha ao analisar dados meteorológicos: $error';
  }

  @override
  String errorFailedToLoadWeatherData(int statusCode) {
    return 'Falha ao carregar dados meteorológicos: HTTP $statusCode';
  }

  @override
  String errorNetworkError(String error) {
    return 'Erro de rede: $error';
  }

  @override
  String errorUnexpectedError(String error) {
    return 'Erro inesperado: $error';
  }

  @override
  String errorUnexpectedErrorOccurred(String error) {
    return 'Ocorreu um erro inesperado: $error';
  }

  @override
  String get weatherConditionSunny => 'Ensolarado';

  @override
  String get weatherConditionPartlyCloudy => 'Parcialmente Nublado';

  @override
  String get weatherConditionCloudy => 'Nublado';

  @override
  String get weatherConditionFoggy => 'Nebuloso';

  @override
  String get weatherConditionDrizzle => 'Garoa';

  @override
  String get weatherConditionRain => 'Chovendo';

  @override
  String get weatherConditionSnow => 'Nevando';

  @override
  String get weatherConditionThunderstorm => 'Tempestade';

  @override
  String get weatherConditionUnknown => 'Desconhecido';

  @override
  String get homeScreenTemperatureUnit => '°C';

  @override
  String get homeScreenConditionTitle => 'Condição: ';

  @override
  String get homeScreenMaxTemperatureTitle => 'Máx: ';

  @override
  String get homeScreenMinTemperatureTitle => 'Mín: ';

  @override
  String get homeScreenTemperatureSeparator => ' / ';

  @override
  String get homeScreenWindSpeedTitle => 'Velocidade do Vento: ';

  @override
  String get homeScreenWindSpeedUnit => ' km/h';

  @override
  String get homeScreenHumidityTitle => 'Umidade: ';

  @override
  String get homeScreenHumidityUnit => '%';

  @override
  String get homeScreenPrecipitationTitle => 'Precipitação: ';

  @override
  String get homeScreenPrecipitationUnit => ' mm';

  @override
  String get homeScreenPrecipitationSumTitle => 'Soma de Precipitação: ';

  @override
  String get homeScreenPrecipitationSumUnit => ' mm';

  @override
  String get homeScreenCloudCoverTitle => 'Cobertura de Nuvens: ';

  @override
  String get homeScreenCloudCoverUnit => '%';

  @override
  String get homeScreenWeatherCodeTitle => 'Código Meteorológico: ';
}
