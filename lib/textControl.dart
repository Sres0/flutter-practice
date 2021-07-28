import 'package:flutter/material.dart';

import './texts.dart';

class TextControl extends StatelessWidget {
  int index;

  TextControl(this.index);

  @override
  Widget build(BuildContext context) {
    return Text(
      texts[index],
      style: TextStyle(
        fontSize: 20,
      ),
      textAlign: TextAlign.center,
    );
  }
}
