import 'package:cocktail_app/core/app_settings.dart';
import 'package:flutter/material.dart';

/// Homepage of Cocktail App.
class CocktailPage extends StatelessWidget {
  const CocktailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppSettings.appName),
      ),
      body: Container(),
    );
  }
}