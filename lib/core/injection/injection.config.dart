// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:ui' as _i264;

import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:olly_olly_flutter_test/common/theme/controller/theme_controller.dart'
    as _i464;
import 'package:olly_olly_flutter_test/common/widget/button/view_model/button_view_model.dart'
    as _i774;
import 'package:olly_olly_flutter_test/core/injection/injection_module.dart'
    as _i246;
import 'package:olly_olly_flutter_test/core/router/app_router.dart' as _i601;
import 'package:olly_olly_flutter_test/core/shared_preferences/app_shared_preferences.dart'
    as _i914;
import 'package:olly_olly_flutter_test/module/auth/screen/login_signup/view_model/login_signup_screen_view_model.dart'
    as _i389;
import 'package:olly_olly_flutter_test/module/auth/service/auth_service.dart'
    as _i1037;
import 'package:olly_olly_flutter_test/module/home/screen/home/view_model/home_screen_view_model.dart'
    as _i534;
import 'package:olly_olly_flutter_test/module/location/service/location_service.dart'
    as _i173;
import 'package:olly_olly_flutter_test/module/weather/service/weather_service.dart'
    as _i830;
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart' as _i30;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final injectionModule = _$InjectionModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => injectionModule.sharedPreferences,
      preResolve: true,
    );
    gh.factory<_i173.LocationService>(() => _i173.LocationService());
    gh.factory<_i830.WeatherService>(() => _i830.WeatherService());
    gh.singleton<_i601.AppRouter>(() => _i601.AppRouter());
    gh.factoryParam<_i774.ButtonViewModel, _i264.VoidCallback?, dynamic>(
      (onTapUp, _) => _i774.ButtonViewModel(onTapUp),
    );
    gh.singleton<_i914.AppSharedPreferences>(
      () => _i914.AppSharedPreferences(gh<_i460.SharedPreferences>()),
    );
    gh.singleton<_i464.ThemeController>(
      () => _i464.ThemeController(gh<_i30.AppSharedPreferences>()),
    );
    gh.factory<_i1037.AuthService>(
      () => _i1037.AuthService(gh<_i30.AppSharedPreferences>()),
    );
    gh.factory<_i534.HomeScreenViewModel>(
      () => _i534.HomeScreenViewModel(
        gh<_i30.AuthService>(),
        gh<_i30.WeatherService>(),
        gh<_i30.LocationService>(),
      ),
    );
    gh.factory<_i389.LoginSignupScreenViewModel>(
      () => _i389.LoginSignupScreenViewModel(
        gh<_i30.AuthService>(),
        gh<_i30.AppSharedPreferences>(),
      ),
    );
    return this;
  }
}

class _$InjectionModule extends _i246.InjectionModule {}
