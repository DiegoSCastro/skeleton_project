import 'package:get_it/get_it.dart';

import 'app.dart';

final injection = GetIt.instance;

void initInjection() {
  injection.registerLazySingleton<CustomDio>(() => CustomDio());
}
