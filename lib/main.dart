import 'package:flutter/material.dart';

import './constants/theme_data.dart';
import './screens/books_screen.dart';
import './screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Books',
      theme: themeData(),
      home: CategoriesScreen(),
      routes: {
        '/books': (ctx) => BooksScreen(),
      },
    );
  }
}
