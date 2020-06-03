import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'core/apps/app_settings.dart';
import 'core/dependency_injection/dependency_injection.dart' as dependency_injection;
import 'core/router/router.gr.dart';

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
      builder: ExtendedNavigator<Router>(router: Router()),
    );
  }
}