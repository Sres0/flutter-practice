import 'package:flutter/material.dart';
import '../constants/theme_data.dart';

import './filters_list_tile.dart';

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
          child: Text('Filters', style: _textTheme.headline4),
        ),
        FiltersListTile(
          Icons.face,
          'Woman author',
          () => Navigator.pushNamed(context, '/'),
        ),
        FiltersListTile(Icons.explore, 'Ethnic author',
            () => Navigator.pushNamed(context, '/')),
        FiltersListTile(Icons.outlet, 'Controversial',
            () => Navigator.pushNamed(context, '/')),
      ],
    ));
  }
}
