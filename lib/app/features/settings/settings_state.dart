import 'package:flutter/material.dart';

class SettingsState {
  final ThemeMode themeMode;
  final bool soundEnabled;
  final bool alwaysOn;

  const SettingsState({
    required this.themeMode,
    required this.soundEnabled,
    required this.alwaysOn,
  });

  factory SettingsState.initial() =>
      const SettingsState(themeMode: ThemeMode.system, soundEnabled: true, alwaysOn: true);

  SettingsState copyWith({ThemeMode? themeMode, bool? soundEnabled, bool? alwaysOn}) =>
      SettingsState(
        themeMode: themeMode ?? this.themeMode,
        soundEnabled: soundEnabled ?? this.soundEnabled,
        alwaysOn: alwaysOn ?? this.alwaysOn,
      );
}
