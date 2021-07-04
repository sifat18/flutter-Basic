import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questex;
  Question(this.questex);
  // const Question({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(questex);
  }
}
