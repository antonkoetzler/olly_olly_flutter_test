import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';

/// Root of the application.
final class App extends StatelessWidget {
  /// Default constructor.
  const App({super.key});

  /// Build function.
  @override
  Widget build(_) {
    final themeModeController = getIt<ThemeModeController>();

    return ValueListenableBuilder(
      valueListenable: themeModeController,
      builder: (_, themeMode, _) {
        return MaterialApp.router(
          themeMode: themeMode,
          theme: createThemeData(isDarkMode: false),
          darkTheme: createThemeData(isDarkMode: true),
          routerConfig: getIt<AppRouter>().router,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [Locale('en'), Locale('pt'), Locale('es')],
        );
      },
    );
  }
}
