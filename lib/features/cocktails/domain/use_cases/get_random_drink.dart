import 'package:cocktail_app/core/failure.dart';
import 'package:cocktail_app/core/use_case.dart';
import 'package:cocktail_app/features/cocktails/domain/entities/drink.dart';
import 'package:cocktail_app/features/cocktails/domain/repositories/random_drink_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

class GetRandomDrink implements UseCase<Drink, Unit> {
  GetRandomDrink({
    @required this.repo,
  });

  final RandomDrinkRepo repo;

  @override
  Future<Either<Failure, Drink>> call(Unit params) async {
    final isValidate = await validate(params);

    return isValidate.fold(
      (failure) => left(failure),
      (data) async => repo.getRandomDrink(),
    );
  }

  @override
  Future<Either<Failure, Unit>> validate(Unit params) async {
    return right(unit);
  }
}
