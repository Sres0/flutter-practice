import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;

  Result(this.finalScore);

  String get finalText {
    //getter doesn't receive arguments
    String finalText;
    if (finalScore > 5) {
      finalText = 'You\'re awesome!';
    } else if (finalScore > 3) {
      finalText = 'You\'re... cool';
    } else if (finalScore > 1) {
      finalText = 'You\'re okay';
    } else {
      finalText = 'Not gonna lie. You\'re BoRiNg.';
    }
    return finalText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Final score: ' + finalScore.toString() + '\n\n' + finalText,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 35,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
