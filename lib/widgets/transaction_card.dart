import 'package:flutter/material.dart';

import './transaction.dart';

class TransactionCard extends StatelessWidget {
  final Transaction tx;

  TransactionCard(this.tx);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      color: Colors.grey.shade700,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
            ),
            child: Text(
              tx.amount.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Text(tx.title),
              Text(tx.date.toString()),
            ],
          )
        ],
      ),
    );
  }
}
