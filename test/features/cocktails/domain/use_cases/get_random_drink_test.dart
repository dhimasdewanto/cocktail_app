import 'package:cocktail_app/features/cocktails/domain/entities/drink.dart';
import 'package:cocktail_app/features/cocktails/domain/repositories/random_drink_repo.dart';
import 'package:cocktail_app/features/cocktails/domain/use_cases/get_random_drink.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockRandomDrinkRepo extends Mock implements RandomDrinkRepo {}

void main() {
  GetRandomDrink useCase;
  MockRandomDrinkRepo repo;

  setUp(() {
    repo = MockRandomDrinkRepo();
    useCase = GetRandomDrink(repo: repo);
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

  test(
    'Should get drink from repository',
    () async {
      // Arrange.
      when(repo.getRandomDrink()).thenAnswer((_) async => right(correctResult));

      // Act
      final eitherResult = await useCase(unit);

      // Assert
      expect(eitherResult, right(correctResult));

      // Verify
      verify(repo.getRandomDrink());
      verifyNoMoreInteractions(repo);
    },
  );
}
