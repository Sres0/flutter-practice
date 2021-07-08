import 'dart:ui';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback onPressed;

  Answer(this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black),
            foregroundColor: MaterialStateProperty.all(Colors.green)),
        child: Text('Ans 1'),
        onPressed: onPressed,
      ),
    );
  }
}
