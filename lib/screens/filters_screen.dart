import 'package:flutter/material.dart';

import '../constants/theme_data.dart';
import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  FiltersScreen();

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _isAuthorWoman = false;
  var _isAuthorEthnic = false;
  var _isControversial = false;

  Widget _filterSwitch(
    String title,
    String subtitle,
    bool isFilter,
    Function(bool) switchState,
    TextTheme theme,
  ) {
    return SwitchListTile(
      title: Text(
        title,
        style: theme.headline5,
      ),
      subtitle: Text(
        subtitle,
        style: theme.subtitle2?.copyWith(color: kPrimaryColor),
      ),
      value: isFilter,
      onChanged: switchState,
    );
  }

  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: Text('Filters')),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: kPrimaryEdgeInsets,
            child: Text(
              'Apply filters',
              style: _textTheme.headline4,
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              _filterSwitch(
                'Woman author',
                'Author is a woman',
                _isAuthorWoman,
                (state) {
                  setState(() {
                    _isAuthorWoman = state;
                  });
                },
                _textTheme,
              ),
              _filterSwitch(
                'Ethnic author',
                'Author is Ethnic (eg. African American, Latinx, Asian, etc.)',
                _isAuthorEthnic,
                (state) {
                  setState(() {
                    _isAuthorEthnic = state;
                  });
                },
                _textTheme,
              ),
              _filterSwitch(
                'Controversial',
                'Book\'s topics are controversial',
                _isControversial,
                (state) {
                  setState(() {
                    _isControversial = state;
                  });
                },
                _textTheme,
              ),
            ],
          ))
        ],
      ),
    );
  }
}
