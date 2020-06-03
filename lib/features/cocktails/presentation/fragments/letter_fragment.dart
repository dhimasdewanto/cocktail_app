import 'package:flutter/material.dart';

/// Fragment to view list drinks by letter.
class LetterFragment extends StatelessWidget {
  const LetterFragment({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        ListTile(title: Text('A')),
        ListTile(title: Text('B')),
      ],
    );
  }
}
