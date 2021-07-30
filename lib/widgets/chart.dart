import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class Chart extends StatefulWidget {
  final List<Transaction> weekTransactions;
  Chart(this.weekTransactions);
  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  List<Map<String, Object>> get transactionValues {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(Duration(days: index));
      var totalSum;

      for (var i = 0; i < widget.weekTransactions.length; i++) {
        if (widget.weekTransactions[i].date.day == weekDay.day &&
            widget.weekTransactions[i].date.month == weekDay.month &&
            widget.weekTransactions[i].date.year == weekDay.year) {
          totalSum += widget.weekTransactions[i].amount;
        }
      }

      return {'day': DateFormat.E(weekDay), 'amount': totalSum};
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      child: Row(
        children: <Widget>[],
      ),
    );
  }
}
