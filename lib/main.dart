import 'package:flutter/material.dart';
// import './question.dart';
// import './answer.dart';

import './quiz.dart';
import './ans.dart';

void main() {
  runApp(Fap());
}

class Fap extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FapState();
  }
}

class FapState extends State<Fap> {
  var qcount = 0;
  int totscore = 0;

  final quest = const [
    {
      'qText': 'What is favourite language?',
      'ans': [
        {'text': 'Java', 'score': 10},
        {'text': 'PHP', 'score': 12},
        {'text': 'C#', 'score': 9},
        {'text': 'Python', 'score': 5}
      ],
    },
    {
      'qText': 'Do you know one of these?',
      'ans': [
        {'text': 'ML', 'score': 5},
        {'text': 'AI', 'score': 4},
        {'text': 'IOT', 'score': 7},
        {'text': 'NO', 'score': 0}
      ],
    },
    {
      'qText': 'What is your Dream?',
      'ans': [
        {'text': 'Dunno bruh', 'score': 3},
        {'text': 'Become a billioniare', 'score': 10},
        {'text': 'Cricketer', 'score': 6},
        {'text': 'just be lazy', 'score': 0}
      ],
    },
  ];

  void resetQ() {
    setState(() {
      totscore = 0;
      qcount = 0;
    });
  }

  void question(int score) {
    totscore += score;
    setState(() {
      qcount++;
    });
    print("Welcome to the first App Demo");

    print(qcount);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fap App'),
        ),
        body: qcount < quest.length
            ? Quiz(question: question, quest: quest, qcount: qcount)
            : Ans(totscore, resetQ),
      ),
    );
  }
}
