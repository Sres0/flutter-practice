import 'package:flutter/material.dart';

import './texts.dart';

class TextControl extends StatefulWidget {
  TextControl();
  @override
  _TextControlState createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  int _index = 0;

  void change() {
    if (_index < texts.length - 1) {
      setState(() => _index += 1);
    } else if (_index > 0) {
      setState(() => _index = 0);
    }
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
