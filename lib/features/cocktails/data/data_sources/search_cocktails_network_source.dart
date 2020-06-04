import 'package:cocktail_app/features/cocktails/data/exceptions/exceptions.dart';
import 'package:cocktail_app/features/cocktails/data/models/drink_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

/// Interface of get drinks by search.
abstract class SearchCocktailsNetworkSource {
  Future<List<DrinkModel>> getDrinksBySearch(String search);
}

/// Implementation of [SearchCocktailsNetworkSource], get drinks by search.
@Injectable(as: SearchCocktailsNetworkSource)
@lazySingleton
class SearchCocktailsNetworkSourceImpl implements SearchCocktailsNetworkSource {
  SearchCocktailsNetworkSourceImpl({@required this.dio});

  final Dio dio;

  @override
  Future<List<DrinkModel>> getDrinksBySearch(String search) async {
    final response = await dio.get(
      '/v1/1/search.php',
      queryParameters: {
        's': search,
      },
    );

    final responseData = response.data['drinks'];

    if (responseData == null) {
      throw NotFoundException();
    }

    return _convertListMapToListModel(responseData as List);
  }

  List<DrinkModel> _convertListMapToListModel(List listMap) {
    return listMap.map((map) => DrinkModel.fromJson(map as Map)).toList();
  }
}
