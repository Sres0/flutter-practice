import 'package:flutter/material.dart';

import './answers.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final VoidCallback answerQuestion; //Function
  final List<Map<String, Object>> qAndAs;
  final int questionIndex;

  Quiz({
    required this.answerQuestion,
    required this.qAndAs,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Question(qAndAs[questionIndex]['questionText'] as String),
        ...(qAndAs[questionIndex]['answers'] as List<
                String>) //... spread operator makes every value of the list an element
            .map((answer) {
          return Answer(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
