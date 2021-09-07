import 'package:flutter/material.dart';

import '../widgets/book_card.dart';
// import '../constants/data_lists.dart  ';
import '../models/category.dart';
import '../models/book.dart';

class BooksScreen extends StatefulWidget {
  static const routeName = '/books';
  final List<Book> availableBooks;

  BooksScreen(this.availableBooks);

  @override
  _BooksScreenState createState() => _BooksScreenState();
}

class _BooksScreenState extends State<BooksScreen> {
  late String _title;
  late List<Book> _displayedBooks;

  @override
  void didChangeDependencies() {
    final _category = ModalRoute.of(context)!.settings.arguments as Category;
    final int _id = _category.id;
    _title = _category.title;
    _displayedBooks = widget.availableBooks
        .where((book) => book.bookCategories.contains(_id))
        .toList();
    super.didChangeDependencies();
  }

  void _removeBook(id) {
    setState(() {
      _displayedBooks.removeWhere((book) => id == book.bookId);
    });
  }

  Widget _pageBody(categoryBooks) {
    return Center(
      child: SafeArea(
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return BookCard(categoryBooks[index], _removeBook);
          },
          itemCount: categoryBooks.length,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_title)),
      body: _pageBody(_displayedBooks),
    );
  }
}
