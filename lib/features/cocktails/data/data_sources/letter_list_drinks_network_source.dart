import 'package:cocktail_app/features/cocktails/data/exceptions/exceptions.dart';
import 'package:cocktail_app/features/cocktails/data/models/drink_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

/// Interface of get drink drink by letter network source.
abstract class LetterListDrinksNetworkSource {
  Future<List<DrinkModel>> getListDrinksByLetter(String letter);
}

/// Implementation of get drink drink by letter network source.
@Injectable(as: LetterListDrinksNetworkSource)
@lazySingleton
class LetterListDrinksNetworkSourceImpl implements LetterListDrinksNetworkSource {
  LetterListDrinksNetworkSourceImpl({
    @required this.dio,
  });

  final Dio dio;

  @override
  Future<List<DrinkModel>> getListDrinksByLetter(String letter) async {
    if (letter.length != 1) {
      throw CharOnlyException();
    }

    final response = await dio.get('/v1/1/search.php', queryParameters: {
      'f': letter[0],
    });

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
