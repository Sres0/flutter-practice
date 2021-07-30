import 'package:flutter/material.dart';

// import 'chart.dart';

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
        child: Column(
          children: [
            Text(
              text,
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
            // Chart(),
          ],
        ),
      ),
    );
  }
}
