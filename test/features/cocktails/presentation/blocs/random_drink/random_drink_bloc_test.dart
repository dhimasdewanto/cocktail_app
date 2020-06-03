import 'package:cocktail_app/features/cocktails/domain/entities/drink.dart';
import 'package:cocktail_app/features/cocktails/domain/use_cases/get_random_drink.dart';
import 'package:cocktail_app/features/cocktails/presentation/blocs/random_drink/random_drink_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../../core/failures/default_failure.dart';

class MockGetRandomDrink extends Mock implements GetRandomDrink {}

void main() {
  RandomDrinkBloc bloc;
  MockGetRandomDrink getRandomDrink;

  setUp(() {
    getRandomDrink = MockGetRandomDrink();
    bloc = RandomDrinkBloc(
      getRandomDrink: getRandomDrink,
    );
  });

  /// Pretend this is correct result of drink.
  /// Drink attribute should not null.
  const correctResult = Drink(
    'idDrink',
    'strDrink',
    'strDrinkAlternate',
    'strDrinkES',
    'strDrinkDE',
    'strDrinkFR',
    'strDrinkZHHANS',
    'strDrinkZHHANT',
    'strTags',
    'strVideo',
    'strCategory',
    'strIBA',
    'strAlcoholic',
    'strGlass',
    'strInstructions',
    'strInstructionsES',
    'strInstructionsDE',
    'strInstructionsFR',
    'strInstructionsZHHANS',
    'strInstructionsZHHANT',
    'strDrinkThumb',
    'strIngredient1',
    'strIngredient2',
    'strIngredient3',
    'strIngredient4',
    'strIngredient5',
    'strIngredient6',
    'strIngredient7',
    'strIngredient8',
    'strIngredient9',
    'strIngredient10',
    'strIngredient11',
    'strIngredient12',
    'strIngredient13',
    'strIngredient14',
    'strIngredient15',
    'strMeasure1',
    'strMeasure2',
    'strMeasure3',
    'strMeasure4',
    'strMeasure5',
    'strMeasure6',
    'strMeasure7',
    'strMeasure8',
    'strMeasure9',
    'strMeasure10',
    'strMeasure11',
    'strMeasure12',
    'strMeasure13',
    'strMeasure14',
    'strMeasure15',
    'strCreativeCommonsConfirmed',
    'dateModified',
  );

  group('GetRandomDrink', () {
    // Set successful use case.
    void setGetRandomDrinkSuccess() => when(getRandomDrink(unit))
        .thenAnswer((_) async => right(correctResult));

    void setGetRandomDrinkFail() => when(getRandomDrink(any))
        .thenAnswer((_) async => left(const DefaultFailure()));

    test('Should get random drink from use case', () async {
      // Arrange
      setGetRandomDrinkSuccess();

      // Act
      bloc.add(const RandomDrinkEvent());
      await untilCalled(getRandomDrink(unit));

      // Verify
      verify(getRandomDrink(unit));
      verifyNoMoreInteractions(getRandomDrink);
    });

    test('Should emit [initial, loading, randomDrinkState] when success',
        () async {
      // Arrange
      setGetRandomDrinkSuccess();

      // Assert Later
      const expected = [
        RandomDrinkState.initial(),
        RandomDrinkState.loading(),
        RandomDrinkState(drink: correctResult),
      ];
      expectLater(bloc, emitsInOrder(expected));

      // Act
      bloc.add(const RandomDrinkEvent());
    });

    test('Should emit [initial, loading, error] when fail',
        () async {
      // Arrange
      setGetRandomDrinkFail();

      // Assert Later
      const expected = [
        RandomDrinkState.initial(),
        RandomDrinkState.loading(),
        RandomDrinkState.error(message: 'Something error'), // Message must be same.
      ];
      expectLater(bloc, emitsInOrder(expected));

      // Act
      bloc.add(const RandomDrinkEvent());
    });
  });
}
