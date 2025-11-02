/// Enum encapsulating every situation when getting the location permission in [HomeScreen].
enum HomeScreenLocationPermissionStatusEnum {
  /// Loading state.
  loading,

  /// The location service is disabled.
  disabled,

  /// The location permission is denied.
  denied,

  /// The location permission is denied forever.
  deniedForever,

  /// The location permission is granted.
  granted,
}
