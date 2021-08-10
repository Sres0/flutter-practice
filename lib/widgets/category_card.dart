import 'package:flutter/material.dart';

import '../constants/theme_data.dart';
import '../screens/books_screen.dart';

class CategoryCard extends StatelessWidget {
  final int id;
  final String title;
  final Color color;

  const CategoryCard(this.id, this.title, this.color);

  @override
  Widget build(BuildContext context) {
    void _selectCategory() {
      Navigator.of(context).pushNamed(BooksScreen.routeName,
          arguments: {'id': id, 'title': title});
    }

    return InkWell(
      onTap: _selectCategory,
      splashColor: kPrimaryColorLight,
      borderRadius: kprimaryBorderRadius,
      child: Container(
        padding: kPrimaryEdgeInsets,
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline5 as TextStyle,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color, color.withOpacity(0.5)],
            begin: Alignment.bottomRight,
          ),
          borderRadius: kprimaryBorderRadius,
        ),
      ),
    );
  }
}
