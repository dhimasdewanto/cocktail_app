import 'package:auto_route/auto_route_annotations.dart';
import 'package:cocktail_app/features/cocktails/presentation/pages/cocktail_page.dart';
import 'package:cocktail_app/features/cocktails/presentation/pages/detail_drink_page.dart';
import 'package:cocktail_app/features/cocktails/presentation/pages/letter_list_drinks_page.dart';

/// Auto generate router.
/// 
/// Add more page in here,
/// then run [flutter pub run build_runner build --delete-conflicting-outputs]
@MaterialAutoRouter()
class $Router {
  @initial
  CocktailPage cocktailPage;

  LetterListDrinksPage letterListDrinksPage;

  DetailDrinkPage detailDrinkPage;
}