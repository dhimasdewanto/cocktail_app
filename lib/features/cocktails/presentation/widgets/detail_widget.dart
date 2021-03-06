import 'package:cached_network_image/cached_network_image.dart';
import 'package:cocktail_app/core/apps/app_styles.dart';
import 'package:cocktail_app/features/cocktails/domain/entities/drink.dart';
import 'package:flutter/material.dart';

/// Widget to show detail of drink.
class DetailWidget extends StatelessWidget {
  const DetailWidget({
    Key key,
    @required this.drink,
  }) : super(key: key);

  final Drink drink;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(
        bottom: AppStyles.padding + 60.0,
      ),
      children: <Widget>[
        CachedNetworkImage(
          imageUrl: drink.strDrinkThumb,
          placeholder: (context, url) {
            final deviceSize = MediaQuery.of(context).size.width;
            return Container(
              height: deviceSize,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
        ),
        ListTile(
          title: const Text('Name'),
          subtitle: Text(drink.strDrink),
        ),
        ListTile(
          title: const Text('Category'),
          subtitle: Text(drink.strCategory),
        ),
        ListTile(
          title: const Text('Alcoholic'),
          subtitle: Text(drink.strAlcoholic),
        ),
        ListTile(
          title: const Text('Instruction'),
          subtitle: Text(drink.strInstructions),
        ),
      ],
    );
  }
}
