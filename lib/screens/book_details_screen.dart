import 'package:flutter/material.dart';

import '../models/book.dart';

class BookDetailsScreen extends StatelessWidget {
  static const routeName = '/details';

  @override
  Widget build(BuildContext context) {
    final _book = ModalRoute.of(context)!.settings.arguments as Book;
    return Scaffold(
        appBar: AppBar(title: Text(_book.title)),
        body: Center(child: Text(_book.title)));
  }
}
