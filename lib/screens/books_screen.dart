import 'package:flutter/material.dart';
import 'package:personality_quiz/widgets/book_card.dart';

import '../constants/data_lists.dart  ';

class BooksScreen extends StatelessWidget {
  static const routeName = '/books';

  Widget _pageBody(categoryBooks) {
    return Center(
      child: SafeArea(
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return BookCard(categoryBooks[index]);
          },
          itemCount: categoryBooks.length,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _bookInfo =
        ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    final int _id = _bookInfo['id'] as int;
    final String _title = _bookInfo['title'] as String;
    final _categoryBooks =
        books.where((book) => book.bookCategories.contains(_id)).toList();

    return Scaffold(
      appBar: AppBar(title: Text(_title)),
      body: _pageBody(_categoryBooks),
    );
  }
}
