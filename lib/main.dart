import 'package:flutter/material.dart';
import './question.dart';

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
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: question,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print("empty 2"),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => print("empty 3"),
            ),
          ], //list of widgets
        ),
        //
      ),
    );
  }
}
