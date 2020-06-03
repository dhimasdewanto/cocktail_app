import 'package:cocktail_app/core/failures/failure.dart';
import 'package:cocktail_app/features/cocktails/domain/entities/drink.dart';
import 'package:dartz/dartz.dart';

/// Interface of get list drinks by letter repository.
abstract class LetterListDrinksRepo {
  Future<Either<Failure, List<Drink>>> getListDrinks(String letter);
}
