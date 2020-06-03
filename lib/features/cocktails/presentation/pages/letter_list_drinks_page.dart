import 'package:auto_route/auto_route.dart';
import 'package:cocktail_app/core/router/router.gr.dart';
import 'package:cocktail_app/features/cocktails/domain/entities/drink.dart';
import 'package:cocktail_app/features/cocktails/presentation/blocs/letter_list_drinks/letter_list_drinks_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Page of [LetterListDrinksPage].
/// Need to pass [LetterListDrinksBloc].
class LetterListDrinksPage extends StatelessWidget {
  const LetterListDrinksPage({
    Key key,
    @required this.letter,
    @required this.letterListDrinksBloc,
  }) : super(key: key);

  final String letter;
  final LetterListDrinksBloc letterListDrinksBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LetterListDrinksBloc>.value(
      value: letterListDrinksBloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text(letter),
        ),
        body: BlocBuilder<LetterListDrinksBloc, LetterListDrinksState>(
          builder: (context, state) {
            return state.when(
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              error: (message) => Center(
                child: Text(message),
              ),
              notFound: () => Center(
                child: Text('$letter not found'),
              ),
              view: _viewWidget,
            );
          },
        ),
      ),
    );
  }

  Widget _viewWidget(List<Drink> listDrinks) {
    return ListView.builder(
      itemCount: listDrinks.length,
      itemBuilder: (context, index) {
        final drink = listDrinks[index];
        return ListTile(
          title: Text(drink.strDrink),
          onTap: () async {
            await ExtendedNavigator.of(context).pushNamed(
              Routes.detailDrinkPage,
              arguments: DetailDrinkPageArguments(
                drink: drink,
              ),
            );
          },
        );
      },
    );
  }
}
