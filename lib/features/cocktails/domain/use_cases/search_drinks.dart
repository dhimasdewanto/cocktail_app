import 'package:cocktail_app/core/failures/failure.dart';
import 'package:cocktail_app/core/use_cases/use_case.dart';
import 'package:cocktail_app/features/cocktails/domain/entities/drink.dart';
import 'package:cocktail_app/features/cocktails/domain/failures/failures.dart';
import 'package:cocktail_app/features/cocktails/domain/repositories/search_drinks_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

/// Use case of search drinks by keyword.
@lazySingleton
class SearchDrinks implements UseCase<List<Drink>, String> {
  SearchDrinks({@required this.repo});

  final SearchDrinksRepo repo;

  /// Search list drinks based on params search text.
  /// [params] is search text.
  /// Will return failure from validate if something wrong.
  @override
  Future<Either<Failure, List<Drink>>> call(String params) async {
    final isValidate = await validate(params);

    return isValidate.fold(
      (failure) => left(failure),
      (data) async => repo.getDrinksBySearch(params),
    );
  }

  /// Validation of [SearchDrinks].
  /// [params] is search text.
  ///
  /// Will return [SearchTextEmptyFailure] if [params.isEmpty] or [params == null]
  @override
  Future<Either<Failure, Unit>> validate(String params) async {
    if (params == null) {
      return left(const SearchTextEmptyFailure());
    }

    if (params.isEmpty) {
      return left(const SearchTextEmptyFailure());
    }

    return right(unit);
  }
}
