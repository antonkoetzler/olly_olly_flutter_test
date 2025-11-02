# Olly Olly Flutter Test

Simple weather application with authentication.

## Features

1. Signup & login;
1. Weather data of your location;
1. Logged in user and theme mode of the application persist when app instance is destroyed.

## Running the project

Project can be run with `flutter run`. However, a debug launch configurations are available when using VSCode or a VSCode fork.

## Project architecture

1. **MVVM pattern**: ViewModels handle business logic and state, widgets are presentation-only;
1. **Dependency injection**: GetIt + Injectable for service registration and injection;
1. **State management**: `ValueNotifier`-based reactive state with `Provider` for `Widget`-level access;
1. **Service layer**: `AuthService` and `WeatherService` encapsulate business logic and API calls;
1. **Module-based structure**: Features organized into modules (auth, home, weather) with clear separation;
1. **Custom widgets**: Reusable components (`Button`, `Input`, `Loading`) with dedicated ViewModels and `ThemeExtensions`;
1. **Theme system**: `ThemeExtensions` for component-level theming, `ThemeController` for app-wide theme persistence;
1. **Navigation**: `go_router` for declarative routing with authentication guards;
1. **Localization**: Flutter l10n with ARB files supporting multiple languages (EN, ES, PT);
1. **Persistence**: `SharedPreferences` for user session and theme mode persistence across app restarts.
