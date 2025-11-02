import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';

/// Font size enum.
enum FontSizeEnum {
  /// Small font size.
  small(kMultiplier * 3),

  /// Medium font size.
  medium(kMultiplier * 5),

  /// Large font size.
  large(kMultiplier * 7);

  /// Default constructor.
  const FontSizeEnum(this.size);

  /// Size.
  final double size;
}
