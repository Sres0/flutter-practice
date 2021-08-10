import 'package:flutter/material.dart';
import 'package:personality_quiz/constants/theme_data.dart';

import '../models/book.dart';
import '../models/category.dart';
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
    final Category _category =
        CATEGORIES.firstWhere((cat) => _book.bookCategories.contains(cat.id));
    return Scaffold(
      appBar: AppBar(title: Text(_book.title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            flex: 3,
            child: Image.network(
              _book.imageUrl,
              fit: BoxFit.fitHeight,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Flexible(
            flex: 2,
            child: Text(
              _book.title.toString(),
              style: _headline5,
            ),
          ),
          Flexible(
            flex: 2,
            child: ListView.builder(
              itemCount: _book.metadata.length,
              itemBuilder: (ctx, index) => Card(
                child: Text(_book.metadata[index]),
                color: kPrimaryColorDark,
                elevation: 0,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: SingleChildScrollView(
              padding: kPrimaryEdgeInsets,
              child: Text(_book.summary),
            ),
          )
        ],
      ),
    );
  }
}
