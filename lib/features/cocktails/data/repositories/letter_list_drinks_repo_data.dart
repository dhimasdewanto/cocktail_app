import 'package:cocktail_app/features/cocktails/data/data_sources/letter_list_drinks_network_source.dart';
import 'package:cocktail_app/features/cocktails/data/models/drink_model.dart';
import 'package:cocktail_app/features/cocktails/domain/entities/drink.dart';
import 'package:cocktail_app/core/failures/failure.dart';
import 'package:cocktail_app/features/cocktails/domain/failures/failures.dart';
import 'package:cocktail_app/features/cocktails/domain/repositories/letter_list_drinks_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

/// Implementation of [LetterListDrinksRepo] from domain layer.
@Injectable(as: LetterListDrinksRepo)
@lazySingleton
class LetterListDrinksRepoData implements LetterListDrinksRepo {
  LetterListDrinksRepoData({
    @required this.letterNetworkSource,
  });

  final LetterListDrinksNetworkSource letterNetworkSource;

  @override
  Future<Either<Failure, List<Drink>>> getListDrinks(String letter) async {
    List<Drink> listDrinks;

    try {
      final listDrinksModel = await letterNetworkSource.getListDrinksByLetter(letter);
      listDrinks = _convertModelsToEntities(listDrinksModel);
    } catch (e) {
      return left(const CharOnlyFailure());
    }

    return right(listDrinks);
  }

  List<Drink> _convertModelsToEntities(List<DrinkModel> listDrinksModel) {
    return listDrinksModel.map((drinkModel) => drinkModel.toEntity()).toList();
  }
}