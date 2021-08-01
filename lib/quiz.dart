import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> quest;
  final int qcount;
  final void Function(int) question;

  Quiz({required this.question, required this.quest, required this.qcount});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          quest[qcount]['qText'] as String,
        ),
        ...(quest[qcount]['ans'] as List<Map<String, Object>>).map((ques) {
          return Answer(
              () => question(ques['score'] as int), ques['text'] as String);
        }).toList()
      ], //list of widgets
    );
  }
}
