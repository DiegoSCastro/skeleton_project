import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../app.dart';

class SettingsCubit extends Cubit<SettingsState> {
  final SharedPreferences _prefs;
  static const String _themeModeKey = 'theme_mode';

  SettingsCubit(this._prefs) : super(SettingsState.initial()) {
    _loadSettings();
  }

  void _loadSettings() {
    final savedThemeMode = _prefs.getString(_themeModeKey);
    var newState = state;
    if (savedThemeMode != null) {
      final themeMode = ThemeMode.values.firstWhere(
        (mode) => mode.toString() == savedThemeMode,
        orElse: () => ThemeMode.system,
      );
      newState = newState.copyWith(themeMode: themeMode);
    }
    emit(newState);
  }

  Future<void> setThemeMode(ThemeMode themeMode) async {
    await _prefs.setString(_themeModeKey, themeMode.toString());
    emit(state.copyWith(themeMode: themeMode));
  }
}
