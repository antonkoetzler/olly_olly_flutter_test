/// Base application exception.
abstract base class AppException implements Exception {
  /// Default constructor.
  const AppException(this.message);

  /// Error message.
  final String message;

  @override
  String toString() => message;
}
