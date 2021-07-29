import 'package:flutter/material.dart';

class ContainerCard extends StatelessWidget {
  final String text;
  ContainerCard(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Colors.grey.shade800,
        child: Text(
          text,
          style: TextStyle(fontSize: 20, color: Colors.white70),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
