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
  //final instead of var because it's not gonna change, but const instead of final because it remains the same since the app starts--we know what the final value will be
  //static const works as well
  final _qAndAs = qAndAs;

  void _answerQuestion() {
    setState(
      () {
        _questionIndex++;
      },
    );
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
            : Result(),
      ),
    );
  }
}
