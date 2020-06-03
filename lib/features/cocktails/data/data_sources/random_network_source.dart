import 'package:cocktail_app/features/cocktails/data/models/drink_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

/// Interface of random drink network source.
abstract class RandomNetworkSource {
  Future<DrinkModel> getRandomCocktail();
}

/// Implementation of random drink network source.
@Injectable(as: RandomNetworkSource)
@lazySingleton
class RandomNetworkSourceImpl implements RandomNetworkSource {
  RandomNetworkSourceImpl({
    @required this.dio,
  });

  final Dio dio;

  @override
  Future<DrinkModel> getRandomCocktail() async {
    final response = await dio.get('/v1/1/random.php');
    final responseData = response.data['drinks'] as List;
    return DrinkModel.fromJson(responseData[0] as Map);
  }
}
