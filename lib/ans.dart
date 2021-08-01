import 'package:flutter/material.dart';

class Ans extends StatelessWidget {
  final int totscore;
  final void Function() rest;
  Ans(this.totscore, this.rest);

  String get resPhrase {
    String resText = 'Well done, Your done!';
    if (totscore <= 9) {
      resText = 'Awsome and great job!';
    } else if (totscore <= 20) {
      resText = 'Strange uggg fugly';
    } else {
      resText = 'What a nerd!';
    }
    return resText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            child: Text('Restart'),
            textColor: Colors.red,
            onPressed: rest,
          )
        ],
      ),
      //
    );
  }
}
