import 'package:cocktail_app/core/failures/failure.dart';
import 'package:cocktail_app/features/cocktails/data/data_sources/random_network_source.dart';
import 'package:cocktail_app/features/cocktails/domain/entities/drink.dart';
import 'package:cocktail_app/features/cocktails/domain/failures/failures.dart';
import 'package:cocktail_app/features/cocktails/domain/repositories/random_drink_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

/// Implementation of RandomRepo from domain layer.
@Injectable(as: RandomDrinkRepo)
@lazySingleton
class RandomDrinkRepoData implements RandomDrinkRepo {
  RandomDrinkRepoData({
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
