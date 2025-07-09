import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../app.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              context.push(AppRouter.settingsPath);
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: const Center(child: Text('Home Page')),
    );
  }
}
