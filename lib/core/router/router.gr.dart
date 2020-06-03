// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cocktail_app/features/cocktails/presentation/pages/cocktail_page.dart';
import 'package:cocktail_app/features/cocktails/presentation/pages/letter_list_drinks_page.dart';
import 'package:cocktail_app/features/cocktails/presentation/blocs/letter_list_drinks/letter_list_drinks_bloc.dart';
import 'package:cocktail_app/features/cocktails/presentation/pages/detail_drink_page.dart';
import 'package:cocktail_app/features/cocktails/domain/entities/drink.dart';

abstract class Routes {
  static const cocktailPage = '/';
  static const letterListDrinksPage = '/letter-list-drinks-page';
  static const detailDrinkPage = '/detail-drink-page';
  static const all = {
    cocktailPage,
    letterListDrinksPage,
    detailDrinkPage,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.cocktailPage:
        if (hasInvalidArgs<CocktailPageArguments>(args)) {
          return misTypedArgsRoute<CocktailPageArguments>(args);
        }
        final typedArgs =
            args as CocktailPageArguments ?? CocktailPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => CocktailPage(key: typedArgs.key),
          settings: settings,
        );
      case Routes.letterListDrinksPage:
        if (hasInvalidArgs<LetterListDrinksPageArguments>(args,
            isRequired: true)) {
          return misTypedArgsRoute<LetterListDrinksPageArguments>(args);
        }
        final typedArgs = args as LetterListDrinksPageArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) => LetterListDrinksPage(
              key: typedArgs.key,
              letter: typedArgs.letter,
              letterListDrinksBloc: typedArgs.letterListDrinksBloc),
          settings: settings,
        );
      case Routes.detailDrinkPage:
        if (hasInvalidArgs<DetailDrinkPageArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<DetailDrinkPageArguments>(args);
        }
        final typedArgs = args as DetailDrinkPageArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) =>
              DetailDrinkPage(key: typedArgs.key, drink: typedArgs.drink),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//CocktailPage arguments holder class
class CocktailPageArguments {
  final Key key;
  CocktailPageArguments({this.key});
}

//LetterListDrinksPage arguments holder class
class LetterListDrinksPageArguments {
  final Key key;
  final String letter;
  final LetterListDrinksBloc letterListDrinksBloc;
  LetterListDrinksPageArguments(
      {this.key, @required this.letter, @required this.letterListDrinksBloc});
}

//DetailDrinkPage arguments holder class
class DetailDrinkPageArguments {
  final Key key;
  final Drink drink;
  DetailDrinkPageArguments({this.key, @required this.drink});
}
