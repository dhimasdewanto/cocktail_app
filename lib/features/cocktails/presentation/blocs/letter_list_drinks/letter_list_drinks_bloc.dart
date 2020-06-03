import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cocktail_app/features/cocktails/domain/entities/drink.dart';
import 'package:cocktail_app/features/cocktails/domain/failures/failures.dart';
import 'package:cocktail_app/features/cocktails/domain/use_cases/get_drinks_by_letter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'letter_list_drinks_event.dart';
part 'letter_list_drinks_state.dart';
part 'letter_list_drinks_bloc.freezed.dart';

/// Bloc to get list drinks by letter.
@injectable
class LetterListDrinksBloc
    extends Bloc<LetterListDrinksEvent, LetterListDrinksState> {
  LetterListDrinksBloc({@required this.getDrinksByLetter});

  final GetDrinksByLetter getDrinksByLetter;

  @override
  LetterListDrinksState get initialState =>
      const LetterListDrinksState.initial();

  @override
  Stream<LetterListDrinksState> mapEventToState(
    LetterListDrinksEvent event,
  ) async* {
    yield const LetterListDrinksState.loading();

    final eitherListDrinks = await getDrinksByLetter(event.letter);

    yield* eitherListDrinks.fold(
      (failure) async* {
        if (failure is NotFoundFailure) {
          yield const LetterListDrinksState.notFound();
        } else {
          yield const LetterListDrinksState.error(
            message: 'Something wrong',
          );
        }
      },
      (listDrinks) async* {
        yield LetterListDrinksState.view(listDrinks);
      },
    );
  }
}
