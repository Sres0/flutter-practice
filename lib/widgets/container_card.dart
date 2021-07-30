import 'package:flutter/material.dart';

class ContainerCard extends StatelessWidget {
  final String text;
  ContainerCard(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Theme.of(context).primaryColor,
        child: Text(
          text,
          style: TextStyle(
              fontSize: 20, color: Theme.of(context).primaryColorLight),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
