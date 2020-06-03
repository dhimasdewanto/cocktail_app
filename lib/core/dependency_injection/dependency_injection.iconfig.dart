// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cocktail_app/core/dependency_injection/register_module.dart';
import 'package:dio/dio.dart';
import 'package:cocktail_app/features/cocktails/data/data_sources/letter_list_drinks_network_source.dart';
import 'package:cocktail_app/features/cocktails/data/repositories/letter_list_drinks_repo_data.dart';
import 'package:cocktail_app/features/cocktails/domain/repositories/letter_list_drinks_repo.dart';
import 'package:cocktail_app/features/cocktails/data/data_sources/random_network_source.dart';
import 'package:cocktail_app/features/cocktails/domain/use_cases/get_drinks_by_letter.dart';
import 'package:cocktail_app/features/cocktails/data/repositories/random_drink_repo_data.dart';
import 'package:cocktail_app/features/cocktails/domain/repositories/random_drink_repo.dart';
import 'package:cocktail_app/features/cocktails/domain/use_cases/get_random_drink.dart';
import 'package:cocktail_app/features/cocktails/presentation/blocs/random_drink/random_drink_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final registerModule = _$RegisterModule();
  g.registerLazySingleton<Dio>(() => registerModule.dio);
  g.registerFactory<LetterListDrinksNetworkSource>(
      () => LetterListDrinksNetworkSourceImpl(dio: g<Dio>()));
  g.registerFactory<LetterListDrinksRepo>(() => LetterListDrinksRepoData(
      letterNetworkSource: g<LetterListDrinksNetworkSource>()));
  g.registerFactory<RandomNetworkSource>(
      () => RandomNetworkSourceImpl(dio: g<Dio>()));
  g.registerLazySingleton<GetDrinksByLetter>(
      () => GetDrinksByLetter(repo: g<LetterListDrinksRepo>()));
  g.registerFactory<RandomDrinkRepo>(
      () => RandomDrinkRepoData(randomNetworkSource: g<RandomNetworkSource>()));
  g.registerLazySingleton<GetRandomDrink>(
      () => GetRandomDrink(repo: g<RandomDrinkRepo>()));
  g.registerFactory<RandomDrinkBloc>(
      () => RandomDrinkBloc(getRandomDrink: g<GetRandomDrink>()));
}

class _$RegisterModule extends RegisterModule {}
