import 'package:flutter/material.dart';

import '../constants/theme_data.dart';
import '../models/book.dart';
import '../widgets/main_drawer.dart';
import './categories_screen.dart';
import './favorites_screen.dart';

class TabsScreen extends StatefulWidget {
  final List<Book> favoriteMeals;
  const TabsScreen(this.favoriteMeals);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages = [];
  int _selectedIndex = 0;

  @override
  void initState() {
    _pages = [
      {'page': CategoriesScreen(), 'title': 'Categories'},
      {'page': FavoritesScreen(widget.favoriteMeals), 'title': 'Favorites'},
    ];
    super.initState();
  }

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
      drawer: MainDrawer(),
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
