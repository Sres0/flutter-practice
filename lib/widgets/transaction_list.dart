import 'package:flutter/material.dart';

import '../models/transaction.dart';
import './transaction_card.dart';

List<Transaction> transactions = [
  Transaction(
    amount: 0.99,
    date: DateTime.now(),
    id: '0',
    title: 'No one ever',
  ),
  Transaction(
    amount: 10.55,
    date: DateTime.now(),
    id: '1',
    title: 'Easy peasy',
  ),
  Transaction(
    amount: 99.99,
    date: DateTime.now(),
    id: '2',
    title: 'Oh dear',
  ),
];

class TransactionList extends StatelessWidget {
  TransactionList();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return TransactionCard(transactions[index]);
        },
        itemCount: transactions.length,
      ),
    );
  }
}
