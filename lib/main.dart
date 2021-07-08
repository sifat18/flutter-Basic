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
    print("Welcome to the first App Demo");

    print(qcount);
  }

  final quest = const [
    {
      'qText': 'What is favourite language?',
      'ans': ['Java', 'PHP', 'C#', 'Python'],
    },
    {
      'qText': 'Do you know one of these?',
      'ans': ['ML', 'AI', 'IOT', 'NO'],
    },
    {
      'qText': 'What is your Dream?',
      'ans': [
        'Dunno bruh',
        'Become a billioniare',
        'Cricketer',
        'just be lazy'
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fap App'),
        ),
        body: qcount < quest.length
            ? Column(
                children: [
                  Question(
                    quest[qcount]['qText'] as String,
                  ),
                  ...(quest[qcount]['ans'] as List<String>).map((ques) {
                    return Answer(question, ques);
                  }).toList()
                ], //list of widgets
              )
            : Center(
                child: Text('Well done, Your done!'),
                //
              ),
      ),
    );
  }
}
