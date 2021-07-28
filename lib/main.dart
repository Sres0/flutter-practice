import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
            TextControl(),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Change!'),
            ),
          ],
        )),
      ),
    );
  }
}

class TextControl extends StatelessWidget {
  const TextControl();

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello World',
      style: TextStyle(
        fontSize: 20,
      ),
    );
  }
}
