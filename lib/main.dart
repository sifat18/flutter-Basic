import 'package:flutter/material.dart';

void main() {
  runApp(Fap());
}

class Fap extends StatelessWidget {
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
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: null,
            ),
          ], //list of widgets
        ),
        //
      ),
    );
  }
}
