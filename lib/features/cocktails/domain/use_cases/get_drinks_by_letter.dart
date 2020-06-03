import 'package:cocktail_app/core/failures/failure.dart';
import 'package:cocktail_app/core/use_cases/use_case.dart';
import 'package:cocktail_app/features/cocktails/domain/entities/drink.dart';
import 'package:cocktail_app/features/cocktails/domain/failures/failures.dart';
import 'package:cocktail_app/features/cocktails/domain/repositories/letter_list_drinks_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
/// Use case of get list drinks by letter.
class GetDrinksByLetter implements UseCase<List<Drink>, String> {
  GetDrinksByLetter({@required this.repo});

  final LetterListDrinksRepo repo;

  /// Call list drinks by letter from repository.
  /// [params] is char letter. Will return failure if [params.length != 1]
  @override
  Future<Either<Failure, List<Drink>>> call(String params) async {
    final isValidate = await validate(params);

    return isValidate.fold(
      (failure) => left(failure),
      (r) => repo.getListDrinks(params),
    );
  }

  /// Validation of [GetDrinksByLetter].
  /// [params] is char letter. Will return failure if [params.length != 1]
  @override
  Future<Either<Failure, Unit>> validate(String params) async {
    if (params.length != 1) {
      return left(const CharOnlyFailure());
    }

    return right(unit);
  }
}
