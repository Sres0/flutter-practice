import 'package:flutter/material.dart';

import '../models/transaction.dart';
import './transaction_list.dart';

class NewTransaction extends StatefulWidget {
  NewTransaction();

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

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

  void _submitData() {
    final submittedTitle = titleController.text;
    final submittedAmount = double.parse(amountController.text);

    if (submittedTitle.isEmpty || submittedAmount <= 0) {
      return;
    }

    _addNewTransaction(submittedTitle, submittedAmount);
    titleController.clear();
    amountController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.all(10),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Colors.grey.shade600,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              TextField(
                controller: titleController,
                onSubmitted: (_) => _submitData(),
                decoration: InputDecoration(
                  labelText: 'Title',
                  labelStyle: TextStyle(fontSize: 17),
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: amountController,
                onSubmitted: (_) => _submitData(),
                decoration: InputDecoration(
                  labelText: 'Amount',
                  labelStyle: TextStyle(fontSize: 17),
                ),
              ),
              SizedBox(height: 10),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.white70, width: 2)),
                  onPressed: () => _submitData(),
                  child: Text(
                    'Add Transaction',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 20,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
