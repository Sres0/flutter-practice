import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final VoidCallback restart;

  Result(this.finalScore, this.restart);

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Final score: ' + finalScore.toString() + '\n\n' + finalText,
            style: TextStyle(
              fontSize: 35,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            height: 30,
          ),
          TextButton(
            // style: ButtonStyle( //long way
            //   textStyle: MaterialStateProperty.all(TextStyle(
            //     fontSize: 20,
            //   )),
            // ),
            style: TextButton.styleFrom(
              primary: Colors.orange,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            onPressed: restart,
            child: Text('Restart'),
          )
        ],
      ),
    );
  }
}
