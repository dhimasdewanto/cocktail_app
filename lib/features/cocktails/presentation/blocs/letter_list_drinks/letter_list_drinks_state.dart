part of 'letter_list_drinks_bloc.dart';

@freezed
abstract class LetterListDrinksState with _$LetterListDrinksState {
  const factory LetterListDrinksState.view(List<Drink> listDrinks) = _ViewLetterListDrinksState;
  const factory LetterListDrinksState.loading() = _LoadingLetterListDrinksState;
  const factory LetterListDrinksState.notFound() = _NotFoundLetterListDrinksState;
  const factory LetterListDrinksState.error({String message}) = _ErrorLetterListDrinksState;
}
