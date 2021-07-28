import 'package:flutter/material.dart';
import 'dart:math';

import './texts.dart';

class TextControl extends StatefulWidget {
  TextControl();
  @override
  _TextControlState createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  int _index = 0;
  var rdm = Random();

  void change() {
    setState(() => _index = rdm.nextInt(texts.length - 1));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            texts[_index],
            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: change,
          child: Text('Change!'),
        ),
      ],
    );
  }
}
