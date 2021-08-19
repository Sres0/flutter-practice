import 'package:flutter/material.dart';
import '../constants/theme_data.dart';

import './filters_list_tile.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer();

  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    Size _mediaQuery = MediaQuery.of(context).size;

    return Drawer(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100,
          width: _mediaQuery.width * 0.25,
          padding: kPrimaryEdgeInsets,
          alignment: Alignment.centerLeft,
          child: Text('Books!', style: _textTheme.headline5),
        ),
        FiltersListTile(Icons.face, 'Woman author'),
        FiltersListTile(Icons.explore, 'Ethnic author'),
        FiltersListTile(Icons.outlet, 'Controversial'),
      ],
    ));
  }
}
