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
    final int _id = _bookInfo['id'] as int;
    final String _title = _bookInfo['title'] as String;
    final categoryBooks =
        books.where((book) => book.bookCategories.contains(_title)).toList();

    return Scaffold(
      appBar: AppBar(title: Text(_title)),
      body: _pageBody(_id),
    );
  }
}
