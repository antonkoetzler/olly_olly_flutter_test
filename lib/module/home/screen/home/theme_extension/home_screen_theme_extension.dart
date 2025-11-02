import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';

/// [ThemeExtension] of [HomeScreen].
@immutable
final class HomeScreenThemeExtension extends ThemeExtension<HomeScreenThemeExtension> {
  /// Default constructor.
  const HomeScreenThemeExtension({
    required this.appBarSpacing,
    required this.errorSpacing,
    required this.homeScreenAppBarTitleTextStyle,
    required this.errorPadding,
    required this.weatherIconSize,
    required this.weatherFieldTitleTextStyle,
    required this.weatherFieldDataTextStyle,
    required this.temperatureTextStyle,
    required this.landscapeSpacing,
    required this.weatherFieldsSpacing,
    required this.temperatureWithIconSpacing,
    required this.loadingSize,
  });

  /// Builder constructor.
  HomeScreenThemeExtension.builder(TextTheme textTheme)
    : appBarSpacing = kMultiplier,
      errorSpacing = kMultiplier * 2,
      homeScreenAppBarTitleTextStyle = textTheme.titleMedium!,
      errorPadding = const EdgeInsets.all(kMultiplier * 2),
      weatherIconSize = kMultiplier * 8,
      weatherFieldTitleTextStyle = textTheme.titleMedium!,
      weatherFieldDataTextStyle = textTheme.bodyMedium!,
      temperatureTextStyle = textTheme.titleLarge!,
      landscapeSpacing = kMultiplier * 4,
      weatherFieldsSpacing = kMultiplier * 2,
      temperatureWithIconSpacing = kMultiplier * 2,
      loadingSize = kMultiplier * 14;

  /// Spacing between the app bar buttons.
  final double appBarSpacing;

  /// Spacing between the error.
  final double errorSpacing;

  /// Text style of the app bar title.
  final TextStyle homeScreenAppBarTitleTextStyle;

  /// [EdgeInsets] of the error [Widget].
  final EdgeInsets errorPadding;

  /// Size of the weather icon.
  final double weatherIconSize;

  /// Text style for weather field title (normal size).
  final TextStyle weatherFieldTitleTextStyle;

  /// Text style for weather field data (normal size).
  final TextStyle weatherFieldDataTextStyle;

  /// Text style for temperature display.
  final TextStyle temperatureTextStyle;

  /// Spacing between the landscape.
  final double landscapeSpacing;

  /// Spacing between the weather fields.
  final double weatherFieldsSpacing;

  /// Spacing between the temperature and the icon.
  final double temperatureWithIconSpacing;

  /// Size of the loading.
  final double loadingSize;

  /// Copy with.
  @override
  HomeScreenThemeExtension copyWith({
    double? appBarSpacing,
    double? errorSpacing,
    TextStyle? homeScreenAppBarTitleTextStyle,
    EdgeInsets? errorPadding,
    double? weatherIconSize,
    TextStyle? weatherFieldTitleTextStyle,
    TextStyle? weatherFieldDataTextStyle,
    TextStyle? temperatureTextStyle,
    double? landscapeSpacing,
    double? weatherFieldsSpacing,
    double? temperatureWithIconSpacing,
    double? loadingSize,
  }) {
    return HomeScreenThemeExtension(
      appBarSpacing: appBarSpacing ?? this.appBarSpacing,
      errorSpacing: errorSpacing ?? this.errorSpacing,
      homeScreenAppBarTitleTextStyle: homeScreenAppBarTitleTextStyle ?? this.homeScreenAppBarTitleTextStyle,
      errorPadding: errorPadding ?? this.errorPadding,
      weatherIconSize: weatherIconSize ?? this.weatherIconSize,
      weatherFieldTitleTextStyle: weatherFieldTitleTextStyle ?? this.weatherFieldTitleTextStyle,
      weatherFieldDataTextStyle: weatherFieldDataTextStyle ?? this.weatherFieldDataTextStyle,
      temperatureTextStyle: temperatureTextStyle ?? this.temperatureTextStyle,
      landscapeSpacing: landscapeSpacing ?? this.landscapeSpacing,
      weatherFieldsSpacing: weatherFieldsSpacing ?? this.weatherFieldsSpacing,
      temperatureWithIconSpacing: temperatureWithIconSpacing ?? this.temperatureWithIconSpacing,
      loadingSize: loadingSize ?? this.loadingSize,
    );
  }

  /// Lerp.
  @override
  HomeScreenThemeExtension lerp(HomeScreenThemeExtension? other, double t) {
    if (other is! HomeScreenThemeExtension) return this;
    return copyWith(
      appBarSpacing: lerpDouble(appBarSpacing, other.appBarSpacing, t),
      errorSpacing: lerpDouble(errorSpacing, other.errorSpacing, t),
      homeScreenAppBarTitleTextStyle: TextStyle.lerp(
        homeScreenAppBarTitleTextStyle,
        other.homeScreenAppBarTitleTextStyle,
        t,
      ),
      errorPadding: EdgeInsets.lerp(errorPadding, other.errorPadding, t),
      weatherIconSize: lerpDouble(weatherIconSize, other.weatherIconSize, t),
      weatherFieldTitleTextStyle: TextStyle.lerp(weatherFieldTitleTextStyle, other.weatherFieldTitleTextStyle, t),
      weatherFieldDataTextStyle: TextStyle.lerp(weatherFieldDataTextStyle, other.weatherFieldDataTextStyle, t),
      temperatureTextStyle: TextStyle.lerp(temperatureTextStyle, other.temperatureTextStyle, t),
      landscapeSpacing: lerpDouble(landscapeSpacing, other.landscapeSpacing, t),
      weatherFieldsSpacing: lerpDouble(weatherFieldsSpacing, other.weatherFieldsSpacing, t),
      temperatureWithIconSpacing: lerpDouble(temperatureWithIconSpacing, other.temperatureWithIconSpacing, t),
      loadingSize: lerpDouble(loadingSize, other.loadingSize, t),
    );
  }
}
