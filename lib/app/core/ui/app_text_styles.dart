import 'package:flutter/material.dart';

class AppTextStyles {
  static AppTextStyles? _instance;
  AppTextStyles._();

  static AppTextStyles get i {
    _instance ??= AppTextStyles._();
    return _instance!;
  }
}

extension AppTextStylesExtensions on BuildContext {
  AppTextStyles get text => AppTextStyles.i;
}
