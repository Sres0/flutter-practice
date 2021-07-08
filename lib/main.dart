import 'package:flutter/material.dart';

import './question.dart';
import './answers.dart';
import './quiz.dart';
// import 'package:personality_quiz/question.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  //static const works as well
  final _qAndAs = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Blue', 'Red', 'White']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Dog', 'Cat', 'Horse', 'Squid']
    },
    {
      'questionText': 'What\'s your favorite card?',
      'answers': ['Ace of Spades', 'King of Hearts']
    },
  ];

  void _answerQuestion() {
    setState(
      () {
        _questionIndex++;
        print(_questionIndex);
      },
    );
  }

  @override
  Widget build(BuildContext ctx) {
    //final instead of var because it's not gonna change, but const instead of final because it remains the same since the app starts--we know what the final value will be

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Personality test')),
        body: _questionIndex < _qAndAs.length
            ? Quiz(_answerQuestion, _qAndAs, _questionIndex)
            : Center(child: Text('End c:')),
      ),
    );
  }
}
