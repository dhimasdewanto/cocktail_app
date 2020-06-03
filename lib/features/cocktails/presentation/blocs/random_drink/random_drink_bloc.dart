import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cocktail_app/features/cocktails/domain/entities/drink.dart';
import 'package:cocktail_app/features/cocktails/domain/use_cases/get_random_drink.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'random_drink_event.dart';
part 'random_drink_state.dart';
part 'random_drink_bloc.freezed.dart';

/// Bloc of Random Drink.
@injectable
class RandomDrinkBloc extends Bloc<RandomDrinkEvent, RandomDrinkState> {
  RandomDrinkBloc({
    @required this.getRandomDrink,
  });

  final GetRandomDrink getRandomDrink;

  @override
  RandomDrinkState get initialState => const RandomDrinkState.initial();

  @override
  Stream<RandomDrinkState> mapEventToState(
    RandomDrinkEvent event,
  ) async* {
    yield const RandomDrinkState.loading();

    final randomDrink = await getRandomDrink(unit);

    yield randomDrink.fold(
      (failure) => const RandomDrinkState.error(
        message: 'Something error',
      ),
      (drink) => RandomDrinkState(
        drink: drink,
      ),
    );
  }
}
