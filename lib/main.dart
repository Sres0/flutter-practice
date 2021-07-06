import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(
      () {
        questionIndex++;
        print(questionIndex);
      },
    );
  }

  @override
  Widget build(BuildContext ctx) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Personality test')),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: () => print('Answer 3'),
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
