import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

/// Global get_it instance.
final getIt = GetIt.instance;

/// Configure dependencies.
@InjectableInit()
Future<void> configureDependencies() async => await getIt.init();
