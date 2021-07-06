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
    'fav ice cream?',
    'fav person?',
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
              quest[qcount],
            ),
            Answer(question),
            Answer(question),
            Answer(question),
          ], //list of widgets
        ),
        //
      ),
    );
  }
}
