import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';

part '../_widget/_app_bar.dart';
part '../_widget/_body.dart';
part '../_widget/_error.dart';
part '../_widget/_success.dart';
part '../_widget/_success_landscape.dart';
part '../_widget/_success_portrait.dart';
part '../_widget/_temperature_with_icon.dart';
part '../_widget/_weather_field.dart';
part '../_widget/_location_field.dart';
part '../_widget/_condition_field.dart';
part '../_widget/_temperature_max_min_field.dart';
part '../_widget/_wind_speed_field.dart';
part '../_widget/_humidity_field.dart';
part '../_widget/_precipitation_field.dart';
part '../_widget/_precipitation_sum_field.dart';
part '../_widget/_cloud_cover_field.dart';
part '../_widget/_logout_button.dart';
part '../_widget/_loading.dart';

/// Home screen.
final class HomeScreen extends StatelessWidget {
  /// Default constructor.
  const HomeScreen({super.key});

  /// Build function.
  @override
  Widget build(context) {
    return Provider(
      create: (_) => getIt<HomeScreenViewModel>()..init(),
      child: const Scaffold(appBar: _AppBar(), body: _Body()),
    );
  }
}
