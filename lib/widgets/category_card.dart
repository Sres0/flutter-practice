import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final Color color;

  const CategoryCard(this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Text(title),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color.withOpacity(0.4), color],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
