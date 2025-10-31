// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get loginSignupScreenLoginUsernameOrEmailLabel =>
      'Nombre de usuario o correo electrónico';

  @override
  String get loginSignupScreenLoginPasswordLabel => 'Contraseña';

  @override
  String get loginSignupScreenLoginActionButtonLabel => 'Iniciar sesión';

  @override
  String get loginSignupScreenSignupActionButtonLabel => 'Registrarse';
}
