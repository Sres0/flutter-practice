import 'package:flutter/material.dart';

class CardForm extends StatefulWidget {
  final VoidCallback onPressed;
  CardForm(this.onPressed);

  @override
  _CardFormState createState() => _CardFormState();
}

class _CardFormState extends State<CardForm> {
  // String titleInput = 'Title';
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Colors.grey.shade600,
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              // onChanged: (val) => titleInput = val, //controller instead of variable for input storage
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
            ),
            SizedBox(height: 10),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.white70)),
              // onPressed: widget.onPressed,
              onPressed: () => print(
                  'Title: ${titleController.text}\nAmount: ${amountController.text}'),
              child: Text('Add Transaction',
                  style: TextStyle(color: Colors.white70)),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
