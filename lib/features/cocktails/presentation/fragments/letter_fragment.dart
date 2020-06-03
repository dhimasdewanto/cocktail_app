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
      children: List.generate(26, (index) {
        final alphabetIndex = index + 65;
        final letter = String.fromCharCode(alphabetIndex);
        return ListTile(
          title: Text(letter),
          onTap: () async {
            _navigateToListDrinksPage(context, letterBloc, letter);
          },
        );
      }),
    );
  }

  Future<void> _navigateToListDrinksPage(
    BuildContext context,
    LetterListDrinksBloc letterBloc,
    String letter,
  ) async {
    letterBloc.add(LetterListDrinksEvent(letter));
    await ExtendedNavigator.of(context).pushNamed(
      Routes.letterListDrinksPage,
      arguments: LetterListDrinksPageArguments(
        letter: letter,
        letterListDrinksBloc: letterBloc,
      ),
    );
  }
}
