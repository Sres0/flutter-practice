import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final VoidCallback onPressed;
  NewTransaction(this.onPressed);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

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
              decoration: InputDecoration(
                labelText: 'Title',
                labelStyle: TextStyle(fontSize: 17),
              ),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Amount',
                labelStyle: TextStyle(fontSize: 17),
              ),
              controller: amountController,
            ),
            SizedBox(height: 10),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.white70, width: 2)),
              onPressed: () => print(
                  'Title: ${titleController.text}\nAmount: ${amountController.text}'),
              child: Text('Add Transaction',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 20,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
