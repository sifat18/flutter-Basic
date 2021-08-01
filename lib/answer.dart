import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function() sa;
  final String aText;
  Answer(this.sa, this.aText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(aText),
        onPressed: sa,
      ),
    );
  }
}
