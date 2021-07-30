import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionCard extends StatelessWidget {
  final Transaction tx;

  TransactionCard(this.tx);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: Colors.grey.shade700,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: Colors.white70,
                  width: 2,
                ),
              ),
              child: Text(
                '\$${double.parse((tx.amount).toStringAsFixed(2))}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Theme.of(context).primaryColorLight,
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Text(
                  tx.title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColorLight,
                      fontSize: 17),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  DateFormat.yMd('en_US').add_jm().format(tx.date),
                  style: TextStyle(color: Theme.of(context).primaryColorLight),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
