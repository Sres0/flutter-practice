import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final Color color;

  const CategoryCard(this.title, this.color);

  @override
  Widget build(BuildContext context) {
    final TextStyle _textStyle =
        Theme.of(context).textTheme.headline6 as TextStyle;

    return Container(
      padding: const EdgeInsets.all(10),
      child: Text(
        title,
        style: _textStyle,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color, color.withAlpha(200)],
          begin: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
