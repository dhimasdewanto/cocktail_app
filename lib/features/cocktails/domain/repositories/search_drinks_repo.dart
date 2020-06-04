import 'package:cocktail_app/core/failures/failure.dart';
import 'package:cocktail_app/features/cocktails/domain/entities/drink.dart';
import 'package:dartz/dartz.dart';

/// Interface of search cocktails repository.
abstract class SearchDrinksRepo {
  Future<Either<Failure, List<Drink>>> getDrinksBySearch(String search);
}
