import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Center(
        child: Column(
          children: [
            const Text('Theme Settings'),
            IconButton(
              onPressed: (){AdaptiveTheme.of(context).toggleThemeMode();},
              icon: const Icon(Icons.light_mode))
            ]
            ),
        ),
      );
  }
}
