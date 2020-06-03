import 'package:auto_route/auto_route.dart';
import 'package:cocktail_app/core/router/router.gr.dart';
import 'package:cocktail_app/features/cocktails/presentation/blocs/letter_list_drinks/letter_list_drinks_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Fragment to view list drinks by letter.
class LetterFragment extends StatelessWidget {
  const LetterFragment({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final letterBloc = context.bloc<LetterListDrinksBloc>();

    return ListView(
      children: <Widget>[
        ListTile(
          title: const Text('A'),
          onTap: () async {
            const letter = 'A';
            letterBloc.add(const LetterListDrinksEvent(letter));
            await ExtendedNavigator.of(context).pushNamed(
              Routes.letterListDrinksPage,
              arguments: LetterListDrinksPageArguments(
                letter: letter,
                letterListDrinksBloc: letterBloc,
              ),
            );
          },
        ),
        ListTile(
          title: const Text('B'),
          onTap: () async {
            const letter = 'B';
            letterBloc.add(const LetterListDrinksEvent(letter));
            await ExtendedNavigator.of(context).pushNamed(
              Routes.letterListDrinksPage,
              arguments: LetterListDrinksPageArguments(
                letter: letter,
                letterListDrinksBloc: letterBloc,
              ),
            );
          },
        ),
      ],
    );
  }
}
