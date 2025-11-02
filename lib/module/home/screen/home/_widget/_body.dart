part of '../widget/home_screen.dart';

/// Body of [HomeScreen].
final class _Body extends StatelessWidget {
  /// Default constructor.
  const _Body();

  /// Build function.
  @override
  Widget build(context) {
    final homeScreenLocationPermissionStatusDisabledLabel =
        localizations.homeScreenLocationPermissionStatusDisabledLabel;
    final homeScreenLocationPermissionStatusDeniedLabel = localizations.homeScreenLocationPermissionStatusDeniedLabel;
    final homeScreenLocationPermissionStatusDeniedForeverLabel =
        localizations.homeScreenLocationPermissionStatusDeniedForeverLabel;

    final viewModel = context.read<HomeScreenViewModel>();
    final state = viewModel.state;
    final locationPermissionStatusController = state.locationPermissionStatusController;

    return Center(
      child: ValueListenableBuilder(
        valueListenable: locationPermissionStatusController,
        builder: (_, locationPermissionStatus, _) {
          return switch (locationPermissionStatus) {
            HomeScreenLocationPermissionStatusEnum.loading => const _Loading(),
            HomeScreenLocationPermissionStatusEnum.disabled => _Error(homeScreenLocationPermissionStatusDisabledLabel),
            HomeScreenLocationPermissionStatusEnum.denied => _Error(homeScreenLocationPermissionStatusDeniedLabel),
            HomeScreenLocationPermissionStatusEnum.deniedForever => _Error(
              homeScreenLocationPermissionStatusDeniedForeverLabel,
            ),
            HomeScreenLocationPermissionStatusEnum.granted => const _Success(),
          };
        },
      ),
    );
  }
}
