import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// import '../models/transaction.dart';
// import './new_transaction.dart';
import './transaction_list.dart';

class TransactionCard extends StatelessWidget {
  final int index;
  const TransactionCard(this.index);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Theme.of(context).primaryColor,
      child: ListTile(
        leading: Padding(
          padding: EdgeInsets.all(2),
          child: CircleAvatar(
            radius: 30,
            child: FittedBox(child: Text('\$${transactions[index].amount}')),
          ),
        ),
        title: Text(
          transactions[index].title,
          style: Theme.of(context).textTheme.headline6,
        ),
        subtitle: Text(
          DateFormat.yMd().format(transactions[index].date).toString(),
          style: Theme.of(context).textTheme.subtitle2,
        ),
        trailing: null,
      ),
    );
  }
}
