import 'package:flutter/material.dart';
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';

/// Loading [Widget].
final class Loading extends StatelessWidget {
  /// Default constructor.
  const Loading({super.key, this.size});

  /// Size.
  final double? size;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<LoadingThemeExtension>();
    final color = themeExtension.color;
    return Center(
      child: SizedBox(
        width: size,
        height: size,
        child: CircularProgressIndicator(color: color),
      ),
    );
  }
}
