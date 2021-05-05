import 'package:flutter/material.dart';

class Frase extends StatelessWidget {
  final String frase;

  const Frase({Key key, this.frase}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      "\"$frase\"",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
