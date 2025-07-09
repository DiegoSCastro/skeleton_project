import 'package:flutter/material.dart';

sealed class ThemeConfig {
  static final theme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF2F80ED),
      brightness: Brightness.light,
    ),
  );

  static final darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF2F80ED),
      brightness: Brightness.dark,
    ),
  );
}
