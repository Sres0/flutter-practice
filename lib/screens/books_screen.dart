import 'package:flutter/material.dart';

import '../constants/data_lists.dart  ';

class BooksScreen extends StatelessWidget {
  static const routeName = '/books';

  Widget _pageBody(id) {
    return Center(
      child: SafeArea(child: Text('Books $id!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _bookInfo =
        ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    final int id = _bookInfo['id'] as int;
    final String title = _bookInfo['title'] as String;
    // final List categories = [];

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: _pageBody(id),
    );
  }
}
