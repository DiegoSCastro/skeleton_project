import 'package:get_it/get_it.dart';

import '../../app.dart';

final sl = GetIt.instance;

void initServiceLocator() {
  sl.registerLazySingleton<CustomDio>(() => CustomDio());
}
