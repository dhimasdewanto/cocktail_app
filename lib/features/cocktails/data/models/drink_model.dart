import 'package:cocktail_app/features/cocktails/domain/entities/drink.dart';

/// Extended version of [Drink] entitiy.
/// Has features like convert to json, entity, to json, etc.
class DrinkModel {
  DrinkModel(
    this.idDrink,
    this.strDrink,
    this.strDrinkAlternate,
    this.strDrinkES,
    this.strDrinkDE,
    this.strDrinkFR,
    this.strDrinkZHHANS,
    this.strDrinkZHHANT,
    this.strTags,
    this.strVideo,
    this.strCategory,
    this.strIBA,
    this.strAlcoholic,
    this.strGlass,
    this.strInstructions,
    this.strInstructionsES,
    this.strInstructionsDE,
    this.strInstructionsFR,
    this.strInstructionsZHHANS,
    this.strInstructionsZHHANT,
    this.strDrinkThumb,
    this.strIngredient1,
    this.strIngredient2,
    this.strIngredient3,
    this.strIngredient4,
    this.strIngredient5,
    this.strIngredient6,
    this.strIngredient7,
    this.strIngredient8,
    this.strIngredient9,
    this.strIngredient10,
    this.strIngredient11,
    this.strIngredient12,
    this.strIngredient13,
    this.strIngredient14,
    this.strIngredient15,
    this.strMeasure1,
    this.strMeasure2,
    this.strMeasure3,
    this.strMeasure4,
    this.strMeasure5,
    this.strMeasure6,
    this.strMeasure7,
    this.strMeasure8,
    this.strMeasure9,
    this.strMeasure10,
    this.strMeasure11,
    this.strMeasure12,
    this.strMeasure13,
    this.strMeasure14,
    this.strMeasure15,
    this.strCreativeCommonsConfirmed,
    this.dateModified,
  );

  String idDrink;
  String strDrink;
  String strDrinkAlternate;
  String strDrinkES;
  String strDrinkDE;
  String strDrinkFR;
  String strDrinkZHHANS;
  String strDrinkZHHANT;
  String strTags;
  String strVideo;
  String strCategory;
  String strIBA;
  String strAlcoholic;
  String strGlass;
  String strInstructions;
  String strInstructionsES;
  String strInstructionsDE;
  String strInstructionsFR;
  String strInstructionsZHHANS;
  String strInstructionsZHHANT;
  String strDrinkThumb;
  String strIngredient1;
  String strIngredient2;
  String strIngredient3;
  String strIngredient4;
  String strIngredient5;
  String strIngredient6;
  String strIngredient7;
  String strIngredient8;
  String strIngredient9;
  String strIngredient10;
  String strIngredient11;
  String strIngredient12;
  String strIngredient13;
  String strIngredient14;
  String strIngredient15;
  String strMeasure1;
  String strMeasure2;
  String strMeasure3;
  String strMeasure4;
  String strMeasure5;
  String strMeasure6;
  String strMeasure7;
  String strMeasure8;
  String strMeasure9;
  String strMeasure10;
  String strMeasure11;
  String strMeasure12;
  String strMeasure13;
  String strMeasure14;
  String strMeasure15;
  String strCreativeCommonsConfirmed;
  String dateModified;

  DrinkModel.fromJson(Map json) {
    idDrink = json['idDrink'] as String;
    strDrink = json['strDrink'] as String;
    strDrinkAlternate = json['strDrinkAlternate'] as String;
    strDrinkES = json['strDrinkES'] as String;
    strDrinkDE = json['strDrinkDE'] as String;
    strDrinkFR = json['strDrinkFR'] as String;
    strDrinkZHHANS = json['strDrinkZH-HANS'] as String;
    strDrinkZHHANT = json['strDrinkZH-HANT'] as String;
    strTags = json['strTags'] as String;
    strVideo = json['strVideo'] as String;
    strCategory = json['strCategory'] as String;
    strIBA = json['strIBA'] as String;
    strAlcoholic = json['strAlcoholic'] as String;
    strGlass = json['strGlass'] as String;
    strInstructions = json['strInstructions'] as String;
    strInstructionsES = json['strInstructionsES'] as String;
    strInstructionsDE = json['strInstructionsDE'] as String;
    strInstructionsFR = json['strInstructionsFR'] as String;
    strInstructionsZHHANS = json['strInstructionsZH-HANS'] as String;
    strInstructionsZHHANT = json['strInstructionsZH-HANT'] as String;
    strDrinkThumb = json['strDrinkThumb'] as String;
    strIngredient1 = json['strIngredient1'] as String;
    strIngredient2 = json['strIngredient2'] as String;
    strIngredient3 = json['strIngredient3'] as String;
    strIngredient4 = json['strIngredient4'] as String;
    strIngredient5 = json['strIngredient5'] as String;
    strIngredient6 = json['strIngredient6'] as String;
    strIngredient7 = json['strIngredient7'] as String;
    strIngredient8 = json['strIngredient8'] as String;
    strIngredient9 = json['strIngredient9'] as String;
    strIngredient10 = json['strIngredient10'] as String;
    strIngredient11 = json['strIngredient11'] as String;
    strIngredient12 = json['strIngredient12'] as String;
    strIngredient13 = json['strIngredient13'] as String;
    strIngredient14 = json['strIngredient14'] as String;
    strIngredient15 = json['strIngredient15'] as String;
    strMeasure1 = json['strMeasure1'] as String;
    strMeasure2 = json['strMeasure2'] as String;
    strMeasure3 = json['strMeasure3'] as String;
    strMeasure4 = json['strMeasure4'] as String;
    strMeasure5 = json['strMeasure5'] as String;
    strMeasure6 = json['strMeasure6'] as String;
    strMeasure7 = json['strMeasure7'] as String;
    strMeasure8 = json['strMeasure8'] as String;
    strMeasure9 = json['strMeasure9'] as String;
    strMeasure10 = json['strMeasure10'] as String;
    strMeasure11 = json['strMeasure11'] as String;
    strMeasure12 = json['strMeasure12'] as String;
    strMeasure13 = json['strMeasure13'] as String;
    strMeasure14 = json['strMeasure14'] as String;
    strMeasure15 = json['strMeasure15'] as String;
    strCreativeCommonsConfirmed = json['strCreativeCommonsConfirmed'] as String;
    dateModified = json['dateModified'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['idDrink'] = idDrink;
    data['strDrink'] = strDrink;
    data['strDrinkAlternate'] = strDrinkAlternate;
    data['strDrinkES'] = strDrinkES;
    data['strDrinkDE'] = strDrinkDE;
    data['strDrinkFR'] = strDrinkFR;
    data['strDrinkZH-HANS'] = strDrinkZHHANS;
    data['strDrinkZH-HANT'] = strDrinkZHHANT;
    data['strTags'] = strTags;
    data['strVideo'] = strVideo;
    data['strCategory'] = strCategory;
    data['strIBA'] = strIBA;
    data['strAlcoholic'] = strAlcoholic;
    data['strGlass'] = strGlass;
    data['strInstructions'] = strInstructions;
    data['strInstructionsES'] = strInstructionsES;
    data['strInstructionsDE'] = strInstructionsDE;
    data['strInstructionsFR'] = strInstructionsFR;
    data['strInstructionsZH-HANS'] = strInstructionsZHHANS;
    data['strInstructionsZH-HANT'] = strInstructionsZHHANT;
    data['strDrinkThumb'] = strDrinkThumb;
    data['strIngredient1'] = strIngredient1;
    data['strIngredient2'] = strIngredient2;
    data['strIngredient3'] = strIngredient3;
    data['strIngredient4'] = strIngredient4;
    data['strIngredient5'] = strIngredient5;
    data['strIngredient6'] = strIngredient6;
    data['strIngredient7'] = strIngredient7;
    data['strIngredient8'] = strIngredient8;
    data['strIngredient9'] = strIngredient9;
    data['strIngredient10'] = strIngredient10;
    data['strIngredient11'] = strIngredient11;
    data['strIngredient12'] = strIngredient12;
    data['strIngredient13'] = strIngredient13;
    data['strIngredient14'] = strIngredient14;
    data['strIngredient15'] = strIngredient15;
    data['strMeasure1'] = strMeasure1;
    data['strMeasure2'] = strMeasure2;
    data['strMeasure3'] = strMeasure3;
    data['strMeasure4'] = strMeasure4;
    data['strMeasure5'] = strMeasure5;
    data['strMeasure6'] = strMeasure6;
    data['strMeasure7'] = strMeasure7;
    data['strMeasure8'] = strMeasure8;
    data['strMeasure9'] = strMeasure9;
    data['strMeasure10'] = strMeasure10;
    data['strMeasure11'] = strMeasure11;
    data['strMeasure12'] = strMeasure12;
    data['strMeasure13'] = strMeasure13;
    data['strMeasure14'] = strMeasure14;
    data['strMeasure15'] = strMeasure15;
    data['strCreativeCommonsConfirmed'] = strCreativeCommonsConfirmed;
    data['dateModified'] = dateModified;
    return data;
  }

  Drink toEntity() {
    return Drink(
      idDrink,
      strDrink,
      strDrinkAlternate,
      strDrinkES,
      strDrinkDE,
      strDrinkFR,
      strDrinkZHHANS,
      strDrinkZHHANT,
      strTags,
      strVideo,
      strCategory,
      strIBA,
      strAlcoholic,
      strGlass,
      strInstructions,
      strInstructionsES,
      strInstructionsDE,
      strInstructionsFR,
      strInstructionsZHHANS,
      strInstructionsZHHANT,
      strDrinkThumb,
      strIngredient1,
      strIngredient2,
      strIngredient3,
      strIngredient4,
      strIngredient5,
      strIngredient6,
      strIngredient7,
      strIngredient8,
      strIngredient9,
      strIngredient10,
      strIngredient11,
      strIngredient12,
      strIngredient13,
      strIngredient14,
      strIngredient15,
      strMeasure1,
      strMeasure2,
      strMeasure3,
      strMeasure4,
      strMeasure5,
      strMeasure6,
      strMeasure7,
      strMeasure8,
      strMeasure9,
      strMeasure10,
      strMeasure11,
      strMeasure12,
      strMeasure13,
      strMeasure14,
      strMeasure15,
      strCreativeCommonsConfirmed,
      dateModified,
    );
  }
}
