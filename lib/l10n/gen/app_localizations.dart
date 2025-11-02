import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_pt.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en'), Locale('es'), Locale('pt')];

  /// No description provided for @loginSignupScreenLoginNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get loginSignupScreenLoginNameLabel;

  /// No description provided for @loginSignupScreenLoginPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get loginSignupScreenLoginPasswordLabel;

  /// No description provided for @loginSignupScreenLoginActionButtonLabel.
  ///
  /// In en, this message translates to:
  /// **'Enter'**
  String get loginSignupScreenLoginActionButtonLabel;

  /// No description provided for @loginSignupScreenSignupActionButtonLabel.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get loginSignupScreenSignupActionButtonLabel;

  /// No description provided for @loginSignupScreenLoginFormSwitcherButtonLabel.
  ///
  /// In en, this message translates to:
  /// **'Signup'**
  String get loginSignupScreenLoginFormSwitcherButtonLabel;

  /// No description provided for @loginSignupScreenSignupFormSwitcherButtonLabel.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get loginSignupScreenSignupFormSwitcherButtonLabel;

  /// No description provided for @loginSignupScreenLoginNameValidator.
  ///
  /// In en, this message translates to:
  /// **'Name is required'**
  String get loginSignupScreenLoginNameValidator;

  /// No description provided for @loginSignupScreenLoginPasswordValidator.
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get loginSignupScreenLoginPasswordValidator;

  /// No description provided for @loginSignupScreenSignupNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get loginSignupScreenSignupNameLabel;

  /// No description provided for @loginSignupScreenSignupPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get loginSignupScreenSignupPasswordLabel;

  /// No description provided for @loginSignupScreenSignupConfirmPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'Confirm password'**
  String get loginSignupScreenSignupConfirmPasswordLabel;

  /// No description provided for @loginSignupScreenSignupNameValidator.
  ///
  /// In en, this message translates to:
  /// **'Name is required'**
  String get loginSignupScreenSignupNameValidator;

  /// No description provided for @loginSignupScreenSignupNameInvalidValidator.
  ///
  /// In en, this message translates to:
  /// **'Name must contain only letters and numbers'**
  String get loginSignupScreenSignupNameInvalidValidator;

  /// No description provided for @loginSignupScreenSignupPasswordValidator.
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get loginSignupScreenSignupPasswordValidator;

  /// No description provided for @loginSignupScreenSignupConfirmPasswordValidator.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get loginSignupScreenSignupConfirmPasswordValidator;

  /// No description provided for @loginSignupScreenSuccessMessage.
  ///
  /// In en, this message translates to:
  /// **'Logged in successfully!'**
  String get loginSignupScreenSuccessMessage;

  /// No description provided for @homeScreenAppBarTitle.
  ///
  /// In en, this message translates to:
  /// **'Welcome, {name}'**
  String homeScreenAppBarTitle(String name);

  /// No description provided for @homeScreenLocationPermissionStatusDisabledLabel.
  ///
  /// In en, this message translates to:
  /// **'Location services are disabled'**
  String get homeScreenLocationPermissionStatusDisabledLabel;

  /// No description provided for @homeScreenLocationPermissionStatusDeniedLabel.
  ///
  /// In en, this message translates to:
  /// **'Location permissions are denied'**
  String get homeScreenLocationPermissionStatusDeniedLabel;

  /// No description provided for @homeScreenLocationPermissionStatusDeniedForeverLabel.
  ///
  /// In en, this message translates to:
  /// **'Location permissions are permanently denied'**
  String get homeScreenLocationPermissionStatusDeniedForeverLabel;

  /// No description provided for @homeScreenErrorRetryButtonText.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get homeScreenErrorRetryButtonText;

  /// No description provided for @errorInvalidUser.
  ///
  /// In en, this message translates to:
  /// **'Invalid user.'**
  String get errorInvalidUser;

  /// No description provided for @errorUserAlreadyExists.
  ///
  /// In en, this message translates to:
  /// **'User already exists.'**
  String get errorUserAlreadyExists;

  /// No description provided for @errorLoginFailed.
  ///
  /// In en, this message translates to:
  /// **'Login failed: {error}'**
  String errorLoginFailed(String error);

  /// No description provided for @errorSignupFailed.
  ///
  /// In en, this message translates to:
  /// **'Signup failed: {error}'**
  String errorSignupFailed(String error);

  /// No description provided for @errorLogoutFailed.
  ///
  /// In en, this message translates to:
  /// **'Logout failed: {error}'**
  String errorLogoutFailed(String error);

  /// No description provided for @errorInvalidResponseFormat.
  ///
  /// In en, this message translates to:
  /// **'Invalid response format: missing current_weather data'**
  String get errorInvalidResponseFormat;

  /// No description provided for @errorFailedToParseWeatherData.
  ///
  /// In en, this message translates to:
  /// **'Failed to parse weather data: {error}'**
  String errorFailedToParseWeatherData(String error);

  /// No description provided for @errorFailedToLoadWeatherData.
  ///
  /// In en, this message translates to:
  /// **'Failed to load weather data: HTTP {statusCode}'**
  String errorFailedToLoadWeatherData(int statusCode);

  /// No description provided for @errorNetworkError.
  ///
  /// In en, this message translates to:
  /// **'Network error: {error}'**
  String errorNetworkError(String error);

  /// No description provided for @errorUnexpectedError.
  ///
  /// In en, this message translates to:
  /// **'Unexpected error: {error}'**
  String errorUnexpectedError(String error);

  /// No description provided for @errorUnexpectedErrorOccurred.
  ///
  /// In en, this message translates to:
  /// **'An unexpected error occurred: {error}'**
  String errorUnexpectedErrorOccurred(String error);

  /// No description provided for @weatherConditionSunny.
  ///
  /// In en, this message translates to:
  /// **'Sunny'**
  String get weatherConditionSunny;

  /// No description provided for @weatherConditionPartlyCloudy.
  ///
  /// In en, this message translates to:
  /// **'Partly Cloudy'**
  String get weatherConditionPartlyCloudy;

  /// No description provided for @weatherConditionCloudy.
  ///
  /// In en, this message translates to:
  /// **'Cloudy'**
  String get weatherConditionCloudy;

  /// No description provided for @weatherConditionFoggy.
  ///
  /// In en, this message translates to:
  /// **'Foggy'**
  String get weatherConditionFoggy;

  /// No description provided for @weatherConditionDrizzle.
  ///
  /// In en, this message translates to:
  /// **'Drizzle'**
  String get weatherConditionDrizzle;

  /// No description provided for @weatherConditionRain.
  ///
  /// In en, this message translates to:
  /// **'Raining'**
  String get weatherConditionRain;

  /// No description provided for @weatherConditionSnow.
  ///
  /// In en, this message translates to:
  /// **'Snowing'**
  String get weatherConditionSnow;

  /// No description provided for @weatherConditionThunderstorm.
  ///
  /// In en, this message translates to:
  /// **'Thunderstorm'**
  String get weatherConditionThunderstorm;

  /// No description provided for @weatherConditionUnknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get weatherConditionUnknown;

  /// No description provided for @homeScreenTemperatureUnit.
  ///
  /// In en, this message translates to:
  /// **'°C'**
  String get homeScreenTemperatureUnit;

  /// No description provided for @homeScreenConditionTitle.
  ///
  /// In en, this message translates to:
  /// **'Condition: '**
  String get homeScreenConditionTitle;

  /// No description provided for @homeScreenMaxTemperatureTitle.
  ///
  /// In en, this message translates to:
  /// **'Max: '**
  String get homeScreenMaxTemperatureTitle;

  /// No description provided for @homeScreenMinTemperatureTitle.
  ///
  /// In en, this message translates to:
  /// **'Min: '**
  String get homeScreenMinTemperatureTitle;

  /// No description provided for @homeScreenTemperatureSeparator.
  ///
  /// In en, this message translates to:
  /// **' / '**
  String get homeScreenTemperatureSeparator;

  /// No description provided for @homeScreenWindSpeedTitle.
  ///
  /// In en, this message translates to:
  /// **'Wind Speed: '**
  String get homeScreenWindSpeedTitle;

  /// No description provided for @homeScreenWindSpeedUnit.
  ///
  /// In en, this message translates to:
  /// **' km/h'**
  String get homeScreenWindSpeedUnit;

  /// No description provided for @homeScreenHumidityTitle.
  ///
  /// In en, this message translates to:
  /// **'Humidity: '**
  String get homeScreenHumidityTitle;

  /// No description provided for @homeScreenHumidityUnit.
  ///
  /// In en, this message translates to:
  /// **'%'**
  String get homeScreenHumidityUnit;

  /// No description provided for @homeScreenPrecipitationTitle.
  ///
  /// In en, this message translates to:
  /// **'Precipitation: '**
  String get homeScreenPrecipitationTitle;

  /// No description provided for @homeScreenPrecipitationUnit.
  ///
  /// In en, this message translates to:
  /// **' mm'**
  String get homeScreenPrecipitationUnit;

  /// No description provided for @homeScreenPrecipitationSumTitle.
  ///
  /// In en, this message translates to:
  /// **'Precipitation Sum: '**
  String get homeScreenPrecipitationSumTitle;

  /// No description provided for @homeScreenPrecipitationSumUnit.
  ///
  /// In en, this message translates to:
  /// **' mm'**
  String get homeScreenPrecipitationSumUnit;

  /// No description provided for @homeScreenCloudCoverTitle.
  ///
  /// In en, this message translates to:
  /// **'Cloud Cover: '**
  String get homeScreenCloudCoverTitle;

  /// No description provided for @homeScreenCloudCoverUnit.
  ///
  /// In en, this message translates to:
  /// **'%'**
  String get homeScreenCloudCoverUnit;

  /// No description provided for @homeScreenWeatherCodeTitle.
  ///
  /// In en, this message translates to:
  /// **'Weather Code: '**
  String get homeScreenWeatherCodeTitle;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'es', 'pt'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'pt':
      return AppLocalizationsPt();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
