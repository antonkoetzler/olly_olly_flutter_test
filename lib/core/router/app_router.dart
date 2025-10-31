import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';

/// Router class containing the GoRouter instance.
@singleton
class AppRouter {
  /// Default constructor.
  AppRouter()
    : _router = GoRouter(
        routes: [GoRoute(path: '/', builder: (context, state) => const LoginSignupScreen())],
      );

  /// Internal GoRouter instance.
  final GoRouter _router;

  /// Get the GoRouter instance.
  GoRouter get router {
    return _router;
  }
}

