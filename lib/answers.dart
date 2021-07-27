import 'dart:ui';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback onPressed;
  final String answerText;

  Answer(
    this.onPressed,
    this.answerText,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        // style: ButtonStyle(
        //     backgroundColor: MaterialStateProperty.all(Colors.black),
        //     foregroundColor: MaterialStateProperty.all(Colors.green)),
        style: ElevatedButton.styleFrom(
          primary: Colors.green,
          onPrimary: Colors.black,
        ),
        child: Text(answerText),
        onPressed: onPressed,
      ),
    );
  }
}
