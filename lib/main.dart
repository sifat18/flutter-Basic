import 'package:flutter/material.dart';

void main() {
  runApp(Fap());
}

class Fap extends StatelessWidget {
  void question() {
    print("Welcome to the first FAP question");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fap App'),
        ),
        body: Column(
          children: [
            Text('FAP In FLUTTER'),
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
