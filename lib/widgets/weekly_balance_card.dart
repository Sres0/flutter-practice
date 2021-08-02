import 'package:flutter/material.dart';

import 'chart.dart';
// import './transaction_list.dart';

class WeeklyBalanceCard extends StatelessWidget {
  final String text;
  WeeklyBalanceCard(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Theme.of(context).primaryColor,
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                text,
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.center,
              ),
              Chart(),
            ],
          ),
        ),
      ),
    );
  }
}
