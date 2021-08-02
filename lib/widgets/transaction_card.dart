import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// import '../models/transaction.dart';
// import './new_transaction.dart';
// import './transaction_list.dart';
import '../models/transaction.dart';

class TransactionCard extends StatefulWidget {
  final Transaction transaction;
  final Function deleteTransaction;

  const TransactionCard(Key key, this.transaction, this.deleteTransaction)
      : super(key: key);

  @override
  _TransactionCardState createState() => _TransactionCardState();
}

class _TransactionCardState extends State<TransactionCard> {
  Color _circleColor = Colors.grey.shade800;

  @override
  void initState() {
    const randomColors = [Colors.grey, Colors.black, Colors.white];
    _circleColor = randomColors[Random().nextInt(3)];
    super.initState();
  }

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
            backgroundColor: _circleColor,
            radius: 30,
            child: FittedBox(child: Text('\$${widget.transaction.amount}')),
          ),
        ),
        title: Text(
          widget.transaction.title,
          style: Theme.of(context).textTheme.headline6,
        ),
        subtitle: Text(
          DateFormat.yMd().format(widget.transaction.date).toString(),
          style: Theme.of(context).textTheme.subtitle2,
        ),
        trailing: MediaQuery.of(context).size.width > 400
            ? TextButton.icon(
                onPressed: () =>
                    widget.deleteTransaction(widget.transaction.id),
                icon: Icon(Icons.delete),
                label: Text('Delete'),
                style: TextButton.styleFrom(
                    primary: Theme.of(context).primaryColorLight),
              )
            : IconButton(
                icon: Icon(Icons.delete),
                onPressed: () =>
                    widget.deleteTransaction(widget.transaction.id),
                color: Theme.of(context).primaryColorLight,
              ),
      ),
    );
  }
}
