import 'package:cocktail_app/core/failures/failure.dart';
import 'package:cocktail_app/features/cocktails/data/data_sources/search_cocktails_network_source.dart';
import 'package:cocktail_app/features/cocktails/data/models/drink_model.dart';
import 'package:cocktail_app/features/cocktails/domain/entities/drink.dart';
import 'package:cocktail_app/features/cocktails/domain/failures/failures.dart';
import 'package:cocktail_app/features/cocktails/domain/repositories/search_drinks_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

/// Implementation of search cocktails repository [SearchDrinksRepo].
@Injectable(as: SearchDrinksRepo)
@lazySingleton
class SearchDrinksRepoData implements SearchDrinksRepo {
  SearchDrinksRepoData({
    @required this.searchNetworkSource,
  });

  final SearchCocktailsNetworkSource searchNetworkSource;

  @override
  Future<Either<Failure, List<Drink>>> getDrinksBySearch(String search) async {
    List<Drink> listDrinks;

    try {
      final listDrinksModel =
          await searchNetworkSource.getDrinksBySearch(search);
      listDrinks = _convertModelsToEntities(listDrinksModel);
    } catch (e) {
      return left(ServerFailure(message: e.toString()));
    }

    return right(listDrinks);
  }

  List<Drink> _convertModelsToEntities(List<DrinkModel> listDrinksModel) {
    return listDrinksModel.map((drinkModel) => drinkModel.toEntity()).toList();
  }
}
