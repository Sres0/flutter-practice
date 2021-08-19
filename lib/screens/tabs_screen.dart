import 'package:flutter/material.dart';
import 'package:personality_quiz/constants/theme_data.dart';

import './categories_screen.dart';
import './favorites_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen();

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> _pages = [
    {'page': CategoriesScreen(), 'title': 'Categories'},
    {'page': FavoritesScreen(), 'title': 'Favorites'},
  ];

  int _selectedIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final _noShadow = [Shadow(offset: Offset.zero, blurRadius: 0)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_pages[_selectedIndex]['title'] as String)),
      body: _pages[_selectedIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: kPrimaryColorLight,
        unselectedItemColor: kPrimaryColor,
        selectedLabelStyle: TextStyle(shadows: _noShadow),
        unselectedLabelStyle: TextStyle(shadows: _noShadow),
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.shifting,
        onTap: _selectPage,
        backgroundColor: kPrimaryColor,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Category'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorites'),
        ],
      ),
    );
  }
}
