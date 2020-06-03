import 'package:cocktail_app/features/cocktails/domain/entities/drink.dart';
import 'package:cocktail_app/features/cocktails/domain/failures/failures.dart';
import 'package:cocktail_app/features/cocktails/domain/repositories/letter_list_drinks_repo.dart';
import 'package:cocktail_app/features/cocktails/domain/use_cases/get_drinks_by_letter.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockLetterListDrinksRepo extends Mock implements LetterListDrinksRepo {}

void main() {
  GetDrinksByLetter useCase;
  MockLetterListDrinksRepo repo;

  setUp(() {
    repo = MockLetterListDrinksRepo();
    useCase = GetDrinksByLetter(repo: repo);
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

  test(
    'Should get list drink from repository',
    () async {
      // Arrange.
      when(repo.getListDrinks(any))
          .thenAnswer((_) async => right(correctResult));

      // Act
      final eitherResult = await useCase(successLetter);

      // Assert
      expect(eitherResult, right(correctResult));

      // Verify
      verify(repo.getListDrinks(any));
      verifyNoMoreInteractions(repo);
    },
  );

  test(
    'Should fail because string is not char',
    () async {
      // Arrange.
      when(repo.getListDrinks(any))
          .thenAnswer((_) async => left(const CharOnlyFailure()));

      // Act
      final eitherResult = await useCase(failLetter);

      // Assert
      expect(eitherResult, left(const CharOnlyFailure()));

      // Verify
      verifyNoMoreInteractions(repo);
    },
  );
}
