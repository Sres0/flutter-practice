import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

import '../models/transaction.dart';
import './transaction_card.dart';

List<Transaction> transactions = [
  Transaction(
    amount: 0.99,
    date: DateTime.now().subtract(Duration(days: 5)),
    id: '${DateTime.now().subtract(Duration(days: 5))}',
    title: 'Books',
  ),
  Transaction(
    amount: 5.55,
    date: DateTime.now().subtract(Duration(days: 6)),
    id: '${DateTime.now().subtract(Duration(days: 6))}',
    title: 'Amazon Prime Video',
  ),
  Transaction(
    amount: 3.50,
    date: DateTime.now().subtract(Duration(days: 4)),
    id: '${DateTime.now().subtract(Duration(days: 4))}',
    title: 'HBO Max',
  ),
  Transaction(
    amount: 25.99,
    date: DateTime.now().subtract(Duration(days: 1)),
    id: '${DateTime.now().subtract(Duration(days: 1))}',
    title: 'Domestika PRO',
  ),
  Transaction(
    amount: 10.50,
    date: DateTime.now().subtract(Duration(days: 3)),
    id: '${DateTime.now().subtract(Duration(days: 3))}',
    title: 'Credit Card',
  ),
  Transaction(
    amount: 7.60,
    date: DateTime.now().subtract(Duration(days: 2)),
    id: '${DateTime.now().subtract(Duration(days: 2))}',
    title: 'Domestika Course',
  ),
  Transaction(
    amount: 5.48,
    date: DateTime.now(),
    id: '${DateTime.now()}',
    title: 'Other',
  ),
];

class TransactionList extends StatelessWidget {
  final Function deleteTransaction;

  TransactionList(this.deleteTransaction);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
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
    return LayoutBuilder(
      builder: (ctx, constraints) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'No transactions yet',
              style: Theme.of(context).textTheme.headline4,
            ),
            Container(
              height: constraints.maxHeight * 0.6,
              child: Image.asset(
                'assets/images/no_transactions.png',
                fit: BoxFit.scaleDown,
              ),
            ),
          ],
        );
      },
    );
  }
}
