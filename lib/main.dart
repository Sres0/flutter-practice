//1. Create an app with an appbar and text below it
//2. Add a button that changes the text
//3. Split the app into 3 widgets: App, TextControl, and Text

import 'package:flutter/material.dart';

import './textControl.dart';
import './texts.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _index = 0;

  change() {
    if (_index < texts.length - 1) {
      setState(() => _index += 1);
    } else if (_index > 0) {
      setState(() => _index = 0);
    }
  }

  @override
  build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ProjectA'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextControl(_index),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: change,
              child: Text('Change!'),
            ),
          ],
        )),
      ),
    );
  }
}
