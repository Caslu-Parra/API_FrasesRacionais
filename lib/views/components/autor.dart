import 'package:flutter/material.dart';

class Autor extends StatelessWidget {
  final String autor;

  const Autor({Key key, this.autor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      "- $autor",
      textAlign: TextAlign.end,
      style: TextStyle(fontStyle: FontStyle.italic),
    );
  }
}
