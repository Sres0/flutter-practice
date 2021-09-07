import 'package:flutter/material.dart';

import '../models/book.dart';
import '../widgets/book_card.dart';

class FavoritesScreen extends StatelessWidget {
  static const routeName = '/favorites';
  final List<Book> favoriteBooks;
  const FavoritesScreen(this.favoriteBooks);

  @override
  Widget build(BuildContext context) {
    if (favoriteBooks.isEmpty) {
      return Scaffold(body: Center(child: Text('No favorites yet!')));
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return BookCard(favoriteBooks[index]);
        },
        itemCount: favoriteBooks.length,
      );
    }
  }
}
