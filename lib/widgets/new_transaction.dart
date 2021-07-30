import 'package:flutter/material.dart';

// import '../models/transaction.dart';
// import './transaction_list.dart';

class NewTransaction extends StatefulWidget {
  final newTx;
  NewTransaction(Function this.newTx);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  void _submitData() {
    final submittedTitle = titleController.text;
    final submittedAmount = double.parse(amountController.text);

    if (submittedTitle.isEmpty || submittedAmount <= 0) {
      return;
    }

    widget.newTx(submittedTitle, submittedAmount);
    titleController.clear();
    amountController.clear();

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.all(10),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Theme.of(context).primaryColor,
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
                      side: BorderSide(
                          color: Theme.of(context).primaryColorLight,
                          width: 2)),
                  onPressed: () => _submitData(),
                  child: Text(
                    'Add Transaction',
                    style: TextStyle(
                      color: Theme.of(context).primaryColorLight,
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
