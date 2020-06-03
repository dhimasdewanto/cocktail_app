import 'package:cocktail_app/features/cocktails/domain/entities/drink.dart';
import 'package:cocktail_app/features/cocktails/presentation/widgets/detail_widget.dart';
import 'package:flutter/material.dart';

/// Dedicated page to show drink detail.
class DetailDrinkPage extends StatelessWidget {
  const DetailDrinkPage({
    Key key,
    @required this.drink,
  }) : super(key: key);

  final Drink drink;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(drink.strDrink),
      ),
      body: DetailWidget(
        drink: drink,
      ),
    );
  }
}
