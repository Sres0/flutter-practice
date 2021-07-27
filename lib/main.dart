import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
import './lqAndAs.dart';

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
  var _score = 0;
  final _qAndAs = qAndAs;
  //final instead of var because it's not gonna change, but const instead of final because it remains the same since the app starts--we know what the final value will be
  //static const works as well

  void _answerQuestion(int score) {
    _score += score;
    setState(
      () {
        _questionIndex++;
      },
    );
  }

  void _restart() {
    setState(() {
      _questionIndex = 0;
      _score = 0;
    });
  }

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Personality test')),
        body: _questionIndex < _qAndAs.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                qAndAs: _qAndAs,
                questionIndex: _questionIndex)
            : Result(_score, _restart),
      ),
    );
  }
}
