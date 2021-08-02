import 'package:flutter/material.dart';

import '../constants/category_list.dart';
import '../widgets/category_card.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen();

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Books')),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: GridView(
          children: categories.map((cat) {
            print(cat.id);
            return CategoryCard(cat.title, cat.color);
          }).toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: _mediaQuery.size.width * 0.3,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
          ),
        ),
      ),
    );
  }
}
