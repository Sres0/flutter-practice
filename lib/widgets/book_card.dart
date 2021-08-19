import 'package:flutter/material.dart';

import '../constants/theme_data.dart';
import '../models/book.dart';
import '../screens/book_details_screen.dart';

class BookCard extends StatelessWidget {
  final Book _book;
  final Function _removeBook;
  const BookCard(this._book, this._removeBook);

  String get interestText {
    switch (_book.interest) {
      case Interest.Boring:
        return 'Boring';
      case Interest.Okay:
        return 'Okay';
      case Interest.Interesting:
        return 'Interesting!';
      default:
        return 'Don\'t know!';
    }
  }

  @override
  Widget build(BuildContext context) {
    void _selectBook(bookId) {
      Navigator.of(context)
          .pushNamed(BookDetailsScreen.routeName, arguments: bookId)
          .then((id) {
        if (id != null) {
          _removeBook(id);
        }
      });
    }

    TextStyle _subtitle1 = Theme.of(context).textTheme.subtitle1 as TextStyle;
    return InkWell(
      onTap: () => _selectBook(_book.bookId),
      splashColor: kPrimaryColorDark,
      borderRadius: kprimaryBorderRadius,
      child: Card(
        margin: kPrimaryEdgeInsets,
        shape: RoundedRectangleBorder(borderRadius: kprimaryBorderRadius),
        color: kPrimaryColorLight,
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: ksecondaryBorderRadius,
                    topRight: ksecondaryBorderRadius,
                  ),
                  child: Image.network(
                    _book.imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: kprimaryBorderRadius,
                        color: kOpacityColorDark),
                    padding: kPrimaryEdgeInsets,
                    width: 300,
                    child: Text(
                      _book.title,
                      style: Theme.of(context).textTheme.headline4 as TextStyle,
                      softWrap: true,
                      textAlign: TextAlign.end,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: kPrimaryEdgeInsets,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      for (var i = 0; i < _book.rating; i++)
                        Icon(Icons.star, color: kPrimaryColorDark),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.auto_awesome, color: kPrimaryColorDark),
                      SizedBox(width: 5),
                      Text(interestText, style: _subtitle1),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.auto_stories, color: kPrimaryColorDark),
                      SizedBox(width: 5),
                      Text(_book.metadata[2], style: _subtitle1),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
