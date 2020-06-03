import 'package:cocktail_app/core/failure.dart';
import 'package:cocktail_app/features/cocktails/data/data_sources/random_network_source.dart';
import 'package:cocktail_app/features/cocktails/domain/entities/drink.dart';
import 'package:cocktail_app/features/cocktails/domain/failures.dart';
import 'package:cocktail_app/features/cocktails/domain/repositories/random_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

/// Implementation of RandomRepo from domain layer.
class RandomRepoData implements RandomRepo {
  RandomRepoData({
    @required this.randomNetworkSource,
  });

  final RandomNetworkSource randomNetworkSource;

  @override
  Future<Either<Failure, Drink>> getRandomDrink() async {
    Drink drink;

    try {
      final drinkModel = await randomNetworkSource.getRandomCocktail();
      drink = drinkModel.toEntity();
    } catch (e) {
      return left(ServerFailure());
    }

    
    return right(drink);
  }
}
