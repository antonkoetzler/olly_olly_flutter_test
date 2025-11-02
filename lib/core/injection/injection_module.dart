import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Injection module for providing external dependencies.
@module
abstract class InjectionModule {
  /// Provides SharedPreferences instance.
  @preResolve
  Future<SharedPreferences> get sharedPreferences => SharedPreferences.getInstance();
}
