import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addTransaction;
  NewTransaction(this.addTransaction);

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

    widget.addTransaction(submittedTitle, submittedAmount);
    titleController.clear();
    amountController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
