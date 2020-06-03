import 'package:flutter/material.dart';

import 'core/app_settings.dart';
import 'features/cocktails/presentation/pages/cocktail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppSettings.appName,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const CocktailPage(),
    );
  }
}