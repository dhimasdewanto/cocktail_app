import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'dependency_injection.iconfig.dart';

/// Access dependency injection (get_it).
final GetIt getIt = GetIt.instance;

@injectableInit
void initInjection() {
  $initGetIt(
    getIt,
  );
}