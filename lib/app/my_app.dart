import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';

//Todo: Rename App
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => injection<ThemeCubit>()),
        BlocProvider(create: (context) => injection<SettingsCubit>()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp.router(
            routerConfig: AppRouter.config,
            // TODO: Rename App
            title: 'My App',
            debugShowCheckedModeBanner: false,
            theme: ThemeConfig.theme,
            darkTheme: ThemeConfig.darkTheme,
            themeMode: state.themeMode,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
          );
        },
      ),
    );
  }
}
