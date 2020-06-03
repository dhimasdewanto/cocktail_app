part of 'random_drink_bloc.dart';

@freezed
abstract class RandomDrinkState with _$RandomDrinkState {
  /// Default state of random drink.
  const factory RandomDrinkState({Drink drink}) = _RandomDrinkState;

  /// If state is loading to get data.
  const factory RandomDrinkState.loading() = _LoadingRandomDrinkState;

  /// To show error message.
  const factory RandomDrinkState.error({String message}) = _ErrorRandomDrinkState;
}
