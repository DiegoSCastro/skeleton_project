import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppEnv {
  static AppEnv? _instance;
  AppEnv._();

  static AppEnv get i {
    _instance ??= AppEnv._();
    return _instance!;
  }

  Future<void> load({required String env}) => dotenv.load(fileName: env);
  String? operator [](String key) => dotenv.env[key];
}

extension AppEnvExtensions on BuildContext {
  AppEnv get env => AppEnv.i;
}
