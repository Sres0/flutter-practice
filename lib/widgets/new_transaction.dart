import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// import '../models/transaction.dart';
// import './transaction_list.dart';

class NewTransaction extends StatefulWidget {
  final newTx;
  NewTransaction(Function this.newTx);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime? _pickedDate;

  void _submitData() {
    final _submittedTitle = _titleController.text;
    final _submittedAmount = double.parse(_amountController.text);

    if (_submittedTitle.isEmpty ||
        _amountController.text.isEmpty ||
        _submittedAmount <= 0 ||
        _pickedDate == null) {
      return;
    }

    widget.newTx(_submittedTitle, _submittedAmount, _pickedDate);
    _titleController.clear();
    _amountController.clear();

    Navigator.of(context).pop();
  }

  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2021),
      lastDate: DateTime.now(),
    ).then((picked) {
      setState(() {
        _pickedDate = picked;
      });
      print(_pickedDate);
    });
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
          child: Expanded(
            child: Column(
              children: <Widget>[
                TextField(
                  controller: _titleController,
                  onSubmitted: (_) => _submitData(),
                  decoration: InputDecoration(
                    labelText: 'Title',
                    labelStyle: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: _amountController,
                  onSubmitted: (_) => _submitData(),
                  decoration: InputDecoration(
                    labelText: 'Amount',
                    labelStyle: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                        _pickedDate == null
                            ? 'No date chosen!'
                            : 'Date: ${DateFormat.yMd().format(_pickedDate!).toString()}',
                        style: Theme.of(context).textTheme.subtitle2),
                    TextButton(
                        onPressed: () => _showDatePicker(),
                        child: Text(
                          'Choose Date',
                          style: Theme.of(context).textTheme.subtitle1,
                        ))
                  ],
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(
                          color: Theme.of(context).primaryColorLight,
                          width: 2)),
                  onPressed: _submitData,
                  child: Text(
                    'Add Transaction',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
