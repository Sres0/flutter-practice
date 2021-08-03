import 'package:flutter/material.dart';

class BooksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    final int id = _routeArgs['id'] as int;
    final String title = _routeArgs['title'] as String;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(title: Text(title)),
      body: Center(child: SafeArea(child: Text('Books $id!'))),
    );
  }
}
