part of 'search_drinks_bloc.dart';

@freezed
abstract class SearchDrinksEvent with _$SearchDrinksEvent {
  const factory SearchDrinksEvent.search(String search) = _SearchDrinksEvent;
}
