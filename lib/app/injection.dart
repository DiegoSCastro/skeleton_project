import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app.dart';

final injection = GetIt.instance;

Future<void> initInjection() async {
  final prefs = await SharedPreferences.getInstance();
  injection
    ..registerLazySingleton<CustomDio>(() => CustomDio())
    ..registerLazySingleton<SharedPreferences>(() => prefs)
    ..registerLazySingleton<SettingsCubit>(() => SettingsCubit(injection<SharedPreferences>()))
    ..registerLazySingleton<ThemeCubit>(() => ThemeCubit(injection<SettingsCubit>()));
  // ..registerLazySingleton<AdService>(() => AdService());

  await _initializeAsyncServices();
}

Future<void> _initializeAsyncServices() async {
  // await injection<AdService>().initialize();
}
