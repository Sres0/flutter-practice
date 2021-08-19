import 'package:flutter/material.dart';

import '../constants/theme_data.dart';

class FiltersListTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  FiltersListTile(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    TextTheme _theme = Theme.of(context).textTheme;

    return ListTile(
      leading: Icon(icon, size: 30, color: kPrimaryColorLight),
      title: Text(text,
          style: _theme.headline6!.copyWith(fontWeight: FontWeight.normal)),
      onTap: onTap,
    );
  }
}
