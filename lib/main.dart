import 'package:flutter/material.dart';

import './constants/theme_data.dart';
import './screens/books_screen.dart';
import './screens/book_details_screen.dart';
import './screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Books',
      theme: themeData(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => CategoriesScreen(),
        BooksScreen.routeName: (ctx) => BooksScreen(),
        BookDetailsScreen.routeName: (ctx) => BookDetailsScreen(),
      },
    );
  }
}
