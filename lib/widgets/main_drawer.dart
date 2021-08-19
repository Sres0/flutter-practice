import 'package:flutter/material.dart';
import '../constants/theme_data.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer();

  @override
  Widget build(BuildContext context) {
    TextTheme _theme = Theme.of(context).textTheme;

    return Drawer(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 120,
          width: double.infinity,
          padding: kPrimaryEdgeInsets,
          alignment: Alignment.centerLeft,
          child: Text('Books!', style: _theme.headline5),
        ),
        ListTile(
          leading: Icon(
            Icons.pregnant_woman,
            size: 30,
            color: kPrimaryColorLight,
          ),
          title: Text(
            'Woman author',
            style: _theme.headline6!.copyWith(fontWeight: FontWeight.normal),
          ),
          onTap: null,
        ),
      ],
    ));
  }
}
