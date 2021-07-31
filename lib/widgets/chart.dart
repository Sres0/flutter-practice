import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';
import './transaction_list.dart';

class Chart extends StatefulWidget {
  Chart();
  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  List<Transaction> get weekTransactions {
    return transactions.where((tx) {
      return tx.date.isAfter(DateTime.now().subtract(Duration(days: 7)));
    }).toList();
  }

  List<Map<String, Object>> get transactionValues {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(Duration(days: index));
      var totalSum = 0.0;

      for (var i = 0; i < weekTransactions.length; i++) {
        if (weekTransactions[i].date.day == weekDay.day &&
            weekTransactions[i].date.month == weekDay.month &&
            weekTransactions[i].date.year == weekDay.year) {
          totalSum += weekTransactions[i].amount;
        }
      }

      return {
        'day': DateFormat.E().format(weekDay).substring(0, 2),
        'amount': totalSum,
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Row(
        children: transactionValues.map(
          (value) {
            return Text('${value['day'].toString()}: ${value['amount']}');
          },
        ).toList(),
      ),
    );
  }
}
