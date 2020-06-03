import 'package:cocktail_app/core/apps/app_settings.dart';
import 'package:cocktail_app/core/dependency_injection/dependency_injection.dart';
import 'package:cocktail_app/features/cocktails/presentation/fragments/random_fragment.dart';
import 'package:cocktail_app/features/cocktails/presentation/blocs/random_drink/random_drink_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      body: BlocProvider<RandomDrinkBloc>(
        create: (_) => getIt<RandomDrinkBloc>(),
        child: _listFragments[_selectedIndex],
      ),
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
