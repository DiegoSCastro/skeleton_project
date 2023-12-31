import 'package:flutter/material.dart';

class AppColors {
  static AppColors? _instance;
  AppColors._();

  static AppColors get i {
    _instance ??= AppColors._();
    return _instance!;
  }
}

extension AppColorsExtensions on BuildContext {
  AppColors get color => AppColors.i;
}
