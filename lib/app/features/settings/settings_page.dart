import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: Text('settings.title'.tr())),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Column(
                children: [
                  ListTile(
                    title: Text('settings.language'.tr()),
                    trailing: DropdownButtonHideUnderline(
                      child: DropdownButton<Locale>(
                        value: context.locale,
                        borderRadius: BorderRadius.circular(12),
                        onChanged: (locale) => context.setLocale(locale ?? const Locale('en')),
                        items: const [
                          DropdownMenuItem(
                            value: Locale('en'),
                            child: LanguageDropdownItem(
                              flagAsset: AppAssets.flagUsa,
                              languageName: 'English',
                            ),
                          ),
                          DropdownMenuItem(
                            value: Locale('pt'),
                            child: LanguageDropdownItem(
                              flagAsset: AppAssets.flagBrazil,
                              languageName: 'Português',
                            ),
                          ),
                          DropdownMenuItem(
                            value: Locale('es'),
                            child: LanguageDropdownItem(
                              flagAsset: AppAssets.flagSpain,
                              languageName: 'Español',
                            ),
                          ),
                          DropdownMenuItem(
                            value: Locale('ar'),
                            child: LanguageDropdownItem(
                              flagAsset: AppAssets.flagArabic,
                              languageName: 'العربية',
                            ),
                          ),
                          DropdownMenuItem(
                            value: Locale('de'),
                            child: LanguageDropdownItem(
                              flagAsset: AppAssets.flagGermany,
                              languageName: 'Deutsch',
                            ),
                          ),
                          DropdownMenuItem(
                            value: Locale('fa'),
                            child: LanguageDropdownItem(
                              flagAsset: AppAssets.flagPersian,
                              languageName: 'فارسی',
                            ),
                          ),
                          DropdownMenuItem(
                            value: Locale('fr'),
                            child: LanguageDropdownItem(
                              flagAsset: AppAssets.flagFrance,
                              languageName: 'Français',
                            ),
                          ),
                          DropdownMenuItem(
                            value: Locale('he'),
                            child: LanguageDropdownItem(
                              flagAsset: AppAssets.flagHebrew,
                              languageName: 'עברית',
                            ),
                          ),
                          DropdownMenuItem(
                            value: Locale('it'),
                            child: LanguageDropdownItem(
                              flagAsset: AppAssets.flagItaly,
                              languageName: 'Italiano',
                            ),
                          ),
                          DropdownMenuItem(
                            value: Locale('ja'),
                            child: LanguageDropdownItem(
                              flagAsset: AppAssets.flagJapan,
                              languageName: '日本語',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('settings.theme'.tr()),
                    trailing: DropdownButtonHideUnderline(
                      child: DropdownButton<ThemeMode>(
                        borderRadius: BorderRadius.circular(12),
                        value: injection<ThemeCubit>().state.themeMode,
                        items: [
                          DropdownMenuItem(
                            value: ThemeMode.system,
                            child: Text('settings.system'.tr()),
                          ),
                          DropdownMenuItem(
                            value: ThemeMode.light,
                            child: Text('settings.light_mode'.tr()),
                          ),
                          DropdownMenuItem(
                            value: ThemeMode.dark,
                            child: Text('settings.dark_mode'.tr()),
                          ),
                        ],
                        onChanged: (themeMode) {
                          if (themeMode != null) {
                            injection<ThemeCubit>().setThemeMode(themeMode);
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
