import 'package:flutter/material.dart';

import './answers.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion; //VoidCallback for no arguments Function
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
                Map<String,
                    Object>>) //... spread operator makes every value of the list an element
            .map((answer) {
          return Answer(
            () => answerQuestion(answer[
                'score']), //Wasn't calling but performing, so had to send a function that, when activated, would perform
            answer['text'] as String,
          );
        }).toList()
      ],
    );
  }
}
