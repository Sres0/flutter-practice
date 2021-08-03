import 'package:flutter/material.dart';

class BooksScreen extends StatelessWidget {
  const BooksScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Specific Book')),
      body: Center(child: Text('Books!')),
    );
  }
}
