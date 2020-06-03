import 'package:cocktail_app/core/apps/app_styles.dart';
import 'package:cocktail_app/features/cocktails/presentation/widgets/detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cocktail_app/features/cocktails/presentation/blocs/random_drink/random_drink_bloc.dart';

/// Fragment to view random drink.
class RandomFragment extends StatefulWidget {
  const RandomFragment({Key key}) : super(key: key);

  @override
  _RandomFragmentState createState() => _RandomFragmentState();
}

class _RandomFragmentState extends State<RandomFragment> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _setNewRandomDrink();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RandomDrinkBloc, RandomDrinkState>(
      builder: (context, state) {
        return Stack(
          children: <Widget>[
            state.map(
              (randomDrink) => DetailWidget(
                drink: randomDrink.drink,
              ),
              loading: (loading) => const Center(
                child: CircularProgressIndicator(),
              ),
              error: (error) => Center(
                child: Text(error.message),
              ),
              initial: (initial) => const Offstage(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(AppStyles.padding),
                child: FloatingActionButton.extended(
                  onPressed: _setNewRandomDrink,
                  label: const Text('New Random Drink'),
                  icon: const Icon(Icons.local_drink),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _setNewRandomDrink() {
    context.bloc<RandomDrinkBloc>().add(const RandomDrinkEvent());
  }
}
