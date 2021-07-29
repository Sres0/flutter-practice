import 'package:flutter/material.dart';

import '../models/transaction.dart';
import './transaction_list.dart';
import './new_transaction.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions();

  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  void _addNewTransaction(String title, double amount) {
    final newTx = Transaction(
      amount: amount,
      title: title,
      id: '0',
      date: DateTime.now(),
    );

    setState(() {
      transactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          child: NewTransaction(_addNewTransaction),
        ),
        TransactionList(),
      ],
    );
  }
}
