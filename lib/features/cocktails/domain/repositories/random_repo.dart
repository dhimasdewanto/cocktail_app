import 'package:cocktail_app/core/failure.dart';
import 'package:cocktail_app/features/cocktails/domain/entities/drink.dart';
import 'package:dartz/dartz.dart';

/// Interface of get random cocktails repository.
abstract class RandomRepo {
  Future<Either<Failure, Drink>> getRandomDrink();
}
