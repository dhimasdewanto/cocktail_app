import 'package:cocktail_app/core/app_settings.dart';
import 'package:cocktail_app/features/cocktails/presentation/fragments/random_fragment.dart';
import 'package:flutter/material.dart';

/// Homepage of Cocktail App.
class CocktailPage extends StatefulWidget {
  const CocktailPage({Key key}) : super(key: key);

  @override
  _CocktailPageState createState() => _CocktailPageState();
}

class _CocktailPageState extends State<CocktailPage> {
  var _selectedIndex = 0;

  final _listFragments = const [
    RandomFragment(),
    RandomFragment(),
  ];

  final _navbarItems = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.local_drink),
      title: Text('Random'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.local_drink),
      title: Text('Random'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppSettings.appName),
      ),
      body: _listFragments[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onFragmentChanged,
        items: _navbarItems,
      ),
    );
  }

  void _onFragmentChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
