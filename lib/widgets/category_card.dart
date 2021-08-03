import 'package:flutter/material.dart';
import '../constants/theme_data.dart';
import '../screens/books_screen.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final Color color;

  const CategoryCard(this.title, this.color);

  @override
  Widget build(BuildContext context) {
    final TextStyle _headline5 =
        Theme.of(context).textTheme.headline5 as TextStyle;

    void _selectCategory() {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => BooksScreen()));
    }

    return InkWell(
      onTap: _selectCategory,
      splashColor: kPrimaryColorLight,
      borderRadius: defaultBorderRadius,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Text(
          title,
          style: _headline5,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color, color.withAlpha(200)],
            begin: Alignment.bottomRight,
          ),
          borderRadius: defaultBorderRadius,
        ),
      ),
    );
  }
}
