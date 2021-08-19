import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:personality_quiz/constants/theme_data.dart';

import '../models/book.dart';
// import '../models/category.dart';
import '../constants/data_lists.dart';

class BookDetailsScreen extends StatelessWidget {
  static const routeName = '/details';

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);
    final TextStyle _headline5 =
        Theme.of(context).textTheme.headline5 as TextStyle;
    final _id = ModalRoute.of(context)!.settings.arguments as int;
    final Book _book = books.firstWhere((book) => _id == book.bookId);

    return Scaffold(
      appBar: AppBar(title: Text(_book.title)),
      body: SingleChildScrollView(
        child: Container(
          margin: kSecondaryEdgeInsets,
          height: _mediaQuery.size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                flex: 2,
                child: Image.network(
                  _book.imageUrl,
                  fit: BoxFit.fitHeight,
                ),
              ),
              SizedBox(height: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _book.title.toString(),
                    style: _headline5,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                      '${_book.metadata[0]} | ${_book.metadata[1]} | ${_book.metadata[2]}'),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (var i = 0; i < _book.rating; i++)
                        Icon(Icons.star, color: kPrimaryColorLight)
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Flexible(
                child: ColoredContainer(mediaQuery: _mediaQuery, book: _book),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColorLight.withOpacity(0.7),
        child: Icon(Icons.delete),
        onPressed: () => Navigator.of(context).pop(_id),
      ),
    );
  }
}

class ColoredContainer extends StatelessWidget {
  const ColoredContainer({
    Key? key,
    required MediaQueryData mediaQuery,
    required Book book,
  })  : _mediaQuery = mediaQuery,
        _book = book,
        super(key: key);

  final MediaQueryData _mediaQuery;
  final Book _book;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: kprimaryBorderRadius,
          color: kPrimaryColor,
          border: Border.all(color: kPrimaryColorLight)),
      width: _mediaQuery.size.width * 0.9,
      child: SingleChildScrollView(
        padding: kPrimaryEdgeInsets,
        child: Text(
          _book.summary,
          style: TextStyle(shadows: [
            Shadow(
              blurRadius: 0,
              offset: Offset.zero,
            )
          ]),
        ),
      ),
    );
  }
}
