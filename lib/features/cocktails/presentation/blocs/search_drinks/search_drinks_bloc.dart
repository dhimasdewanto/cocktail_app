import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cocktail_app/core/failures/failure.dart';
import 'package:cocktail_app/features/cocktails/domain/entities/drink.dart';
import 'package:cocktail_app/features/cocktails/domain/failures/failures.dart';
import 'package:cocktail_app/features/cocktails/domain/use_cases/search_drinks.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'search_drinks_event.dart';
part 'search_drinks_state.dart';
part 'search_drinks_bloc.freezed.dart';

/// Searching Bloc.
@injectable
class SearchDrinksBloc extends Bloc<SearchDrinksEvent, SearchDrinksState> {
  SearchDrinksBloc({
    @required this.searchDrinks,
  });

  final SearchDrinks searchDrinks;

  @override
  SearchDrinksState get initialState => const SearchDrinksState.initial();

  @override
  Stream<SearchDrinksState> mapEventToState(
    SearchDrinksEvent event,
  ) async* {
    final eitherValidate = await searchDrinks.validate(event.search);

    yield* eitherValidate.fold(
      (failure) => _failureStream(event, failure),
      (success) => _successStream(event),
    );
  }

  /// If [searchDrinks.validate] return success.
  Stream<SearchDrinksState> _successStream(
    SearchDrinksEvent event,
  ) async* {
    yield const SearchDrinksState.loading();

    final eitherDrinks = await searchDrinks(event.search);

    yield* eitherDrinks.fold(
      (failure) => _failureStream(event, failure),
      (listDrinks) async* {
        yield SearchDrinksState.view(listDrinks);
      },
    );
  }

  /// If [searchDrinks.validate] return failure.
  Stream<SearchDrinksState> _failureStream(
    SearchDrinksEvent event,
    Failure failure,
  ) async* {
    if (failure is SearchTextEmptyFailure) {
      yield const SearchDrinksState.searchTextEmpty();
    } else if (failure is NotFoundFailure) {
      yield const SearchDrinksState.notFound();
    } else {
      yield const SearchDrinksState.error(
        message: 'Something wrong',
      );
    }
  }
}
