import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.purple, brightness: Brightness.light),
      dark: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.purple, brightness: Brightness.dark),
      initial: AdaptiveThemeMode.system,
      builder: (theme, darkTheme) => MaterialApp(
        title: 'Muziker',
        theme: theme,
        darkTheme: darkTheme,
        initialRoute: '/login',
          routes: {
            '/login': (context) => LoginPage(),
            '/home': (context) => HomePage(),
          },
      ),
    );
  }
}