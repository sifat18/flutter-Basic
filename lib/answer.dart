import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback sa;
  Answer(this.sa);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text('Answer1'),
        onPressed: sa,
      ),
    );
  }
}
