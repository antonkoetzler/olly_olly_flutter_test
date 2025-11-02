import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

/// User model.
@JsonSerializable()
final class User {
  /// JSON key for [name].
  static const nameJsonKey = 'name';

  /// JSON key for [password].
  static const passwordJsonKey = 'password';

  /// Default constructor.
  const User({required this.name, required this.password});

  /// From JSON constructor.
  factory User.fromJson(Map<String, dynamic> json) {
    return _$UserFromJson(json);
  }

  /// Name.
  @JsonKey(name: nameJsonKey)
  final String name;

  /// Password.
  @JsonKey(name: passwordJsonKey)
  final String password;

  /// [toJson].
  Map<String, dynamic> toJson() {
    return _$UserToJson(this);
  }

  /// Hash code.
  @override
  int get hashCode {
    return Object.hash(name, password);
  }

  /// Equals.
  @override
  bool operator ==(Object other) {
    return other is User && other.runtimeType == runtimeType && other.name == name && other.password == password;
  }
}
