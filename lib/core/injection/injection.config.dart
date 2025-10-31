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
import 'package:olly_olly_flutter_test/common/theme/controller/theme_mode_controller.dart'
    as _i1018;
import 'package:olly_olly_flutter_test/common/widget/button/view_model/button_view_model.dart'
    as _i774;
import 'package:olly_olly_flutter_test/core/router/app_router.dart' as _i601;
import 'package:olly_olly_flutter_test/module/auth/screen/login_signup/view_model/login_signup_screen_view_model.dart'
    as _i389;
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart' as _i30;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.singleton<_i1018.ThemeModeController>(
      () => _i1018.ThemeModeController(),
    );
    gh.singleton<_i601.AppRouter>(() => _i601.AppRouter());
    gh.factory<_i389.LoginSignupScreenViewModel>(
      () => _i389.LoginSignupScreenViewModel(gh<_i30.ThemeModeController>()),
    );
    gh.factoryParam<_i774.ButtonViewModel, _i264.VoidCallback?, dynamic>(
      (onTapUp, _) => _i774.ButtonViewModel(onTapUp),
    );
    return this;
  }
}
