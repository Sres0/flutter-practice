import 'dart:io';

import 'package:flutter/cupertino.dart';
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
    final _theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.all(10),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: _theme.primaryColor,
        child: Container(
          padding: EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
            bottom: MediaQuery.of(context).viewInsets.bottom + 10,
          ),
          child: Expanded(
            child: Column(
              children: <Widget>[
                DefaultTextField(_titleController, _submitData, 'Title', false),
                DefaultTextField(
                    _amountController, _submitData, 'Amount', true),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                        _pickedDate == null
                            ? 'No date chosen!'
                            : 'Date: ${DateFormat.yMd().format(_pickedDate!).toString()}',
                        style: _theme.textTheme.subtitle2),
                    TextButton(
                        onPressed: () => _showDatePicker(),
                        child: Text(
                          'Choose Date',
                          style: _theme.textTheme.subtitle1,
                        ))
                  ],
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(
                          color: _theme.primaryColorLight, width: 2)),
                  onPressed: _submitData,
                  child: Text(
                    'Add Transaction',
                    style: _theme.textTheme.headline6,
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

class DefaultTextField extends StatelessWidget {
  final TextEditingController amountController;
  final Function submitData;
  final String text;
  final bool numericPad;

  DefaultTextField(
      this.amountController, this.submitData, this.text, this.numericPad);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoTextField(
            placeholder: text,
            onSubmitted: (_) => submitData(),
          )
        : TextField(
            keyboardType:
                numericPad ? TextInputType.number : TextInputType.emailAddress,
            controller: amountController,
            onSubmitted: (_) => submitData(),
            decoration: InputDecoration(
              labelText: text,
              labelStyle: Theme.of(context).textTheme.subtitle1,
            ),
          );
  }
}
