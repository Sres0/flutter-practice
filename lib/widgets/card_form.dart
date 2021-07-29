import 'package:flutter/material.dart';

class CardForm extends StatelessWidget {
  final VoidCallback onPressed;
  const CardForm(this.onPressed);

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
              decoration: InputDecoration(
                labelText: 'Title',
              ),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
            ),
            SizedBox(height: 10),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.white70)),
              onPressed: onPressed,
              child: Text(
                'Add Transaction',
                style: TextStyle(color: Colors.white70),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
