import 'package:flutter/material.dart';

import '../constants/theme_data.dart';
import '../screens/filters_screen.dart';
import './main_list_tile.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer();

  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;

    return Drawer(
        child: Column(
      children: [
        Container(
          color: kPrimaryColor,
          height: 100,
          width: double.infinity,
          padding: kPrimaryEdgeInsets,
          alignment: Alignment.bottomCenter,
          child: Text('Books', style: _textTheme.headline4),
        ),
        MainListTile(
            Icons.book, 'Books', () => Navigator.of(context).pushNamed('/')),
        MainListTile(Icons.settings, 'Filters',
            () => Navigator.of(context).pushNamed(FiltersScreen.routeName)),
      ],
    ));
  }
}
