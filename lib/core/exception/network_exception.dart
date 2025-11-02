import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';

/// Network exception.
final class NetworkException extends AppException {
  /// Default constructor.
  const NetworkException(super.message, {this.statusCode});

  /// HTTP status code, if applicable.
  final int? statusCode;

  @override
  String toString() => '${statusCode != null ? '$statusCode: ' : ''}$message';
}
