import 'package:auto_route/auto_route.dart';
import 'package:cocktail_app/core/apps/app_styles.dart';
import 'package:cocktail_app/core/router/router.gr.dart';
import 'package:cocktail_app/features/cocktails/domain/entities/drink.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cocktail_app/features/cocktails/presentation/blocs/search_drinks/search_drinks_bloc.dart';

/// Fragment for searching drinks.
class SearchFragment extends StatelessWidget {
  const SearchFragment({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchBloc = context.bloc<SearchDrinksBloc>();

    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            top: 60.0,
          ),
          child: BlocBuilder<SearchDrinksBloc, SearchDrinksState>(
            builder: (context, state) {
              return state.when(
                view: _viewWidget,
                searchTextEmpty: () => const Center(
                  child: Text('Fill text field to search...'),
                ),
                initial: () => const Center(
                  child: Text('Fill text field to search...'),
                ),
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                error: (message) => Center(
                  child: Text(message),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppStyles.padding),
          child: TextField(
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
              hintText: 'Search...',
              filled: true,
              fillColor: Theme.of(context).brightness == Brightness.dark
                  ? Colors.black
                  : Colors.white,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(50.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(50.0),
              ),
              contentPadding: const EdgeInsets.all(15.0),
            ),
            onSubmitted: (search) {
              searchBloc.add(SearchDrinksEvent.search(search));
            },
          ),
        ),
      ],
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
