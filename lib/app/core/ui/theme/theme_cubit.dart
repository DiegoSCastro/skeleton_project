import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app.dart';

class ThemeCubit extends Cubit<ThemeState> {
  final SettingsCubit _settingsCubit;

  ThemeCubit(this._settingsCubit) : super(ThemeState.initial()) {
    _loadTheme();
  }

  void _loadTheme() {
    emit(state.copyWith(themeMode: _settingsCubit.state.themeMode));
  }

  void setThemeMode(ThemeMode themeMode) {
    _settingsCubit.setThemeMode(themeMode);
    emit(state.copyWith(themeMode: themeMode));
  }
}
