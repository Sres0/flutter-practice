//1. Create an app with an appbar and text below it
//2. Add a button that changes the text
//3. Split the app into 3 widgets: App, TextControl, and Text

import 'package:flutter/material.dart';

import './textControl.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ProjectA'),
        ),
        body: Center(child: TextControl()),
      ),
    );
  }
}
