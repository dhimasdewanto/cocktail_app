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
    context.bloc<RandomDrinkBloc>().add(const RandomDrinkEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RandomDrinkBloc, RandomDrinkState>(
      builder: (context, state) {
        return state.map(
          (randomDrink) => DetailWidget(
            drink: randomDrink.drink,
          ),
          loading: (loading) => const Center(
            child: CircularProgressIndicator(),
          ),
          error: (error) => Center(
            child: Text(error.message),
          ),
        );
      },
    );
  }
}
