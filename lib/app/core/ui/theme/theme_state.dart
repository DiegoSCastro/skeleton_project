import 'package:flutter/material.dart';

class ThemeState {
  final ThemeMode themeMode;

  const ThemeState({required this.themeMode});

  factory ThemeState.initial() => const ThemeState(themeMode: ThemeMode.system);

  ThemeState copyWith({ThemeMode? themeMode}) => ThemeState(themeMode: themeMode ?? this.themeMode);
}
