import 'package:flutter/material.dart';
import './question.dart';
import './answers.dart';
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
    var questions = [
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Personality test')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Question(questions[_questionIndex]['questionText'] as String),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
