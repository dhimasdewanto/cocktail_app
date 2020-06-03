import 'package:flutter/material.dart';

import 'core/app_settings.dart';
import 'core/dependency_injection/dependency_injection.dart' as dependency_injection;
import 'features/cocktails/presentation/pages/cocktail_page.dart';

void main() {
  dependency_injection.initInjection();
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