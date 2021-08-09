import 'package:flutter/material.dart';

import '../constants/theme_data.dart';
import '../models/book.dart';

class BookCard extends StatelessWidget {
  final Book book;

  const BookCard(this.book);

  void _selectBook() {
    print('object');
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _selectBook,
      splashColor: kPrimaryColorDark,
      borderRadius: primaryBorderRadius,
      child: Card(
        margin: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(borderRadius: primaryBorderRadius),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: secondaryBorderRadius,
                    topRight: secondaryBorderRadius,
                  ),
                  child: Image.network(
                    book.imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(book.title),
              ],
            )
          ],
        ),
      ),
    );
  }
}
