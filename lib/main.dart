import 'package:flutter/material.dart';

import './constants/theme_data.dart';
import './constants/data_lists.dart';
import './models/book.dart';
import './screens/favorites_screen.dart';
import './screens/filters_screen.dart';
import './screens/tabs_screen.dart';
import './screens/books_screen.dart';
import './screens/book_details_screen.dart';
import './screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'woman': false,
    'ethnic': false,
    'controversial': false,
  };

  List<Book> _availableBooks = books;
  List<Book> _favoriteBooks = [];

  void _saveFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;
      _availableBooks = books.where((book) {
        if (_filters['woman'] == true && !book.isAuthorWoman) {
          return false;
        }
        if (_filters['ethnic'] == true && !book.isAuthorEthnic) {
          return false;
        }
        if (_filters['controversial'] == true && !book.isControversial) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  void _toggleFavorite(int bookId) {
    final _existingIndex =
        _favoriteBooks.indexWhere((book) => book.bookId == bookId);
    if (_existingIndex >= 0) {
      setState(() {
        _favoriteBooks.removeAt(_existingIndex);
      });
    } else {
      setState(() {
        _favoriteBooks.add(books.firstWhere((book) => book.bookId == bookId));
        print(_favoriteBooks);
      });
    }
  }

  bool _isFavorite(int id) {
    return _favoriteBooks.any((book) => book.bookId == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Books',
      theme: themeData(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(_favoriteBooks),
        CategoriesScreen.routeName: (ctx) => CategoriesScreen(),
        BooksScreen.routeName: (ctx) => BooksScreen(_availableBooks),
        BookDetailsScreen.routeName: (ctx) =>
            BookDetailsScreen(_isFavorite, _toggleFavorite),
        FavoritesScreen.routeName: (ctx) => FavoritesScreen(_favoriteBooks),
        FiltersScreen.routeName: (ctx) => FiltersScreen(_filters, _saveFilters),
      },
      onGenerateRoute: (ctx) =>
          MaterialPageRoute(builder: (ctx) => CategoriesScreen()),
      onUnknownRoute: (ctx) =>
          MaterialPageRoute(builder: (ctx) => CategoriesScreen()),
    );
  }
}
