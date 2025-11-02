import 'package:flutter/material.dart';
import 'package:olly_olly_flutter_test/olly_olly_flutter_test.dart';
import 'package:provider/provider.dart';

part '../_widget/_body.dart';
part '../_widget/_input.dart';
part '../_widget/_buttons.dart';
part '../_widget/_action_button.dart';
part '../_widget/_logo.dart';
part '../_widget/_inputs.dart';
part '../_widget/_form_switcher_button.dart';

/// Login signup screen.
final class LoginSignupScreen extends StatelessWidget {
  /// Default constructor.
  const LoginSignupScreen({super.key});

  /// Build function.
  @override
  Widget build(_) {
    return Provider(
      create: (_) => getIt<LoginSignupScreenViewModel>(),
      child: const Scaffold(body: _Body()),
    );
  }
}
