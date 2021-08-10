import 'package:flutter/material.dart';
import 'package:personality_quiz/models/category.dart';
import 'package:personality_quiz/widgets/book_card.dart';

import '../constants/data_lists.dart  ';
import '../models/category.dart';

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
    final _category = ModalRoute.of(context)!.settings.arguments as Category;
    final Color _color = _category.color;
    final int _id = _category.id;
    final String _title = _category.title;
    final _categoryBooks =
        books.where((book) => book.bookCategories.contains(_id)).toList();

    return Scaffold(
      appBar: AppBar(
          title: Text(
        _title,
        style: TextStyle(color: _color),
      )),
      body: _pageBody(_categoryBooks),
    );
  }
}
