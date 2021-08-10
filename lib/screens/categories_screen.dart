import 'package:flutter/material.dart';
// import 'package:personality_quiz/constants/theme_data.dart';

import '../constants/data_lists.dart';
import '../widgets/category_card.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen();

  @override
  Widget build(BuildContext context) {
    var _gridDelegate = SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 300,
      childAspectRatio: 3 / 2,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Books')),
      body: SafeArea(
        child: GridView(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          children: CATEGORIES.map((cat) => CategoryCard(cat)).toList(),
          gridDelegate: _gridDelegate,
        ),
      ),
    );
  }
}
