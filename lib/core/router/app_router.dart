import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';

/// Router class containing the GoRouter instance.
@singleton
class AppRouter {
  /// Default constructor.
  AppRouter()
    : _router = GoRouter(
        navigatorKey: navigatorKey,
        redirect: _redirect,
        routes: [
          GoRoute(path: '/', builder: (_, __) => const LoginSignupScreen(), redirect: _authRedirect),
          GoRoute(path: '/home', builder: (_, __) => const HomeScreen(), redirect: _unauthRedirect),
        ],
      );

  /// Internal GoRouter instance.
  final GoRouter _router;

  /// Redirect function for route guards.
  static String? _redirect(BuildContext context, GoRouterState state) {
    return null;
  }

  /// Redirect for authenticated routes (redirects to home if logged in).
  static String? _authRedirect(BuildContext context, GoRouterState state) {
    final sharedPreferences = getIt<AppSharedPreferences>();
    if (sharedPreferences.loggedInUser != null) {
      return '/home';
    }
    return null;
  }

  /// Redirect for unauthenticated routes (redirects to login if not logged in).
  static String? _unauthRedirect(BuildContext context, GoRouterState state) {
    final sharedPreferences = getIt<AppSharedPreferences>();
    if (sharedPreferences.loggedInUser == null) {
      return '/';
    }
    return null;
  }

  /// Navigates to a route.
  ///
  /// i.e. [AppRouter.push(Routes.gameRoutes.gameListingScreen.navigate())]
  static void push(String route) {
    navigatorKey.currentContext?.push(route);
  }

  /// Replaces the current route stack with the provided route.
  ///
  /// i.e. [AppRouter.replace(Routes.gameRoutes.gameListingScreen.navigate())]
  static void replace(String route) {
    navigatorKey.currentContext?.go(route);
  }

  /// Pops the current [Route].
  static void pop() {
    navigatorKey.currentContext?.pop();
  }

  /// Get the GoRouter instance.
  GoRouter get router {
    return _router;
  }
}
