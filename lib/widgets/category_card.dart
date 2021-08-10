import 'package:flutter/material.dart';

import '../constants/theme_data.dart';
import '../models/category.dart';
import '../screens/books_screen.dart';

class CategoryCard extends StatelessWidget {
  final Category category;

  const CategoryCard(this.category);

  @override
  Widget build(BuildContext context) {
    void _selectCategory(Category cat) {
      Navigator.of(context).pushNamed(BooksScreen.routeName, arguments: cat);
    }

    return InkWell(
      onTap: () => _selectCategory(category),
      splashColor: kPrimaryColorLight,
      borderRadius: kprimaryBorderRadius,
      child: Container(
        padding: kPrimaryEdgeInsets,
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.headline5 as TextStyle,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [category.color, category.color.withBlue(250)],
            begin: Alignment.bottomRight,
          ),
          borderRadius: kprimaryBorderRadius,
        ),
      ),
    );
  }
}
