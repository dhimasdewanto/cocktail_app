part of 'letter_list_drinks_bloc.dart';

@freezed
abstract class LetterListDrinksEvent with _$LetterListDrinksEvent {
  const factory LetterListDrinksEvent(String letter) = _LetterListDrinksEvent;
}
