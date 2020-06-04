part of 'search_drinks_bloc.dart';

@freezed
abstract class SearchDrinksState with _$SearchDrinksState {
  /// Initial state of [SearchDrinksState].
  const factory SearchDrinksState.initial() = _InitialSearchDrinksState;

  /// Loading state.
  const factory SearchDrinksState.loading() = _LoadingSearchDrinksState;

  /// Error state if search text is empty.
  const factory SearchDrinksState.searchTextEmpty() = _EmptySearchDrinksState;

  /// State to show list drinks data.
  const factory SearchDrinksState.view(List<Drink> listDrinks) =
      _ViewSearchDrinksState;

  /// Default error state, like [ServerFailure], etc.
  const factory SearchDrinksState.error({String message}) =
      _ErrorSearchDrinksState;
}
