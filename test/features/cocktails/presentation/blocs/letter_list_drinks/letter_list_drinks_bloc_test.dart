import 'package:cocktail_app/features/cocktails/domain/entities/drink.dart';
import 'package:cocktail_app/features/cocktails/domain/failures/failures.dart';
import 'package:cocktail_app/features/cocktails/domain/use_cases/get_drinks_by_letter.dart';
import 'package:cocktail_app/features/cocktails/presentation/blocs/letter_list_drinks/letter_list_drinks_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockGetDrinksByLetter extends Mock implements GetDrinksByLetter {}

void main() {
  LetterListDrinksBloc bloc;
  MockGetDrinksByLetter getDrinksByLetter;

  setUp(() {
    getDrinksByLetter = MockGetDrinksByLetter();
    bloc = LetterListDrinksBloc(
      getDrinksByLetter: getDrinksByLetter,
    );
  });

  const successLetter = 'A';
  const failLetter = 'AA';

  /// Pretend this is correct result of list drinks.
  /// Drink attribute should not null.
  const correctResult = [
    Drink(
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
    ),
  ];

  group('GetDrinksByLetter', () {
    // Set successful use case.
    void setGetDrinksByLetterSuccess() => when(getDrinksByLetter(any))
        .thenAnswer((_) async => right(correctResult));

    // Set fail use case.
    void setGetDrinksByLetterFail() => when(getDrinksByLetter(any))
        .thenAnswer((_) async => left(const CharOnlyFailure()));

    test('Should get list drinks from use case', () async {
      // Arrange
      setGetDrinksByLetterSuccess();

      // Act
      bloc.add(const LetterListDrinksEvent(successLetter));
      await untilCalled(getDrinksByLetter(successLetter));

      // Verify
      verify(getDrinksByLetter(successLetter));
      verifyNoMoreInteractions(getDrinksByLetter);
    });

    test('Should get char only failure', () async {
      // Arrange
      setGetDrinksByLetterFail();

      // Act
      bloc.add(const LetterListDrinksEvent(failLetter));
      await untilCalled(getDrinksByLetter(failLetter));

      // Verify
      verify(getDrinksByLetter(failLetter));
      verifyNoMoreInteractions(getDrinksByLetter);
    });

    test('Should emit [initial, loading, view] when success', () async {
      // Arrange
      setGetDrinksByLetterSuccess();

      // Assert Later
      const expected = [
        LetterListDrinksState.initial(),
        LetterListDrinksState.loading(),
        LetterListDrinksState.view(correctResult),
      ];
      expectLater(bloc, emitsInOrder(expected));

      // Act
      bloc.add(const LetterListDrinksEvent(successLetter));
    });

    test('Should emit [initial, loading, error] when fail', () async {
      // Arrange
      setGetDrinksByLetterFail();

      // Assert Later
      const expected = [
        LetterListDrinksState.initial(),
        LetterListDrinksState.loading(),
        LetterListDrinksState.error(message: 'Something wrong'), // Must be same as bloc
      ];
      expectLater(bloc, emitsInOrder(expected));

      // Act
      bloc.add(const LetterListDrinksEvent(failLetter));
    });
  });
}
