import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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

  void question() {
    setState(() {
      qcount++;
    });
    print("Welcome to the first FAP question");

    print(qcount);
  }

  var quest = [
    {
      'qText': 'fav ice cream?',
      'ans': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'qText': 'fav person?',
      'ans': ['Asfee', 'Dola', 'Promee', 'Upsy'],
    },
    {
      'qText': 'Cruhes?',
      'ans': ['Asfee', 'lamina', 'Madiha', 'Upsy'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fap App'),
        ),
        body: Column(
          children: [
            Question(
              quest[qcount]['qText'] as String,
            ),
            ...(quest[qcount]['ans'] as List<String>).map((ques) {
              return Answer(question, ques);
            }).toList()
          ], //list of widgets
        ),
        //
      ),
    );
  }
}
