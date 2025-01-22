import 'package:flutter/material.dart';

import 'app.dart';

//Todo: Rename App
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Todo: Rename App
      title: 'MyApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeConfig.theme,
      home: const HomePage(),
    );
  }
}
