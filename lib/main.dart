import 'package:flutter/material.dart';

import 'screens/categories_screen.dart';
import './constants/theme_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Books',
      theme: themeData(),
      home: CategoriesScreen(),
    );
  }
}
