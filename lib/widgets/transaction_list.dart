import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

import '../models/transaction.dart';
import './transaction_card.dart';

List<Transaction> transactions = [
  // Transaction(
  //   amount: 0.99,
  //   date: DateTime.now(),
  //   id: '0',
  //   title: 'No one ever',
  // ),
  // Transaction(
  //   amount: 10.55,
  //   date: DateTime.now(),
  //   id: '1',
  //   title: 'Easy peasy',
  // ),
  // Transaction(
  //   amount: 99.99,
  //   date: DateTime.now(),
  //   id: '2',
  //   title: 'Oh dear',
  // ),
];

class TransactionList extends StatelessWidget {
  final Function deleteTransaction;

  TransactionList(this.deleteTransaction);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 400,
      child: transactions.isEmpty
          ? EmptyTransactions()
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return TransactionCard(index, deleteTransaction);
              },
              itemCount: transactions.length,
            ),
    );
  }
}

class EmptyTransactions extends StatelessWidget {
  const EmptyTransactions();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'No transactions yet',
          style: Theme.of(context).textTheme.headline4,
        ),
        Container(
            height: 300,
            padding: EdgeInsets.all(20),
            child: Image.asset(
              'assets/images/no_transactions.png',
              fit: BoxFit.cover,
            ))
      ],
    );
  }
}
