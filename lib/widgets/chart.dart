import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';
import './transaction_list.dart';
import './chart_bar.dart';

class Chart extends StatefulWidget {
  Chart();
  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  List<Transaction> get _weekTransactions {
    return transactions.where((tx) {
      return tx.date.isAfter(DateTime.now().subtract(Duration(days: 7)));
    }).toList();
  }

  List<Map<String, Object>> get _weekTransactionValues {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(Duration(days: index));
      var totalSum = 0.0;

      for (var i = 0; i < _weekTransactions.length; i++) {
        if (_weekTransactions[i].date.day == weekDay.day &&
            _weekTransactions[i].date.month == weekDay.month &&
            _weekTransactions[i].date.year == weekDay.year) {
          totalSum += _weekTransactions[i].amount;
        }
      }

      return {
        'day': DateFormat.E().format(weekDay).substring(0, 2),
        'amount': totalSum,
      };
    }).reversed.toList();
  }

  double get _spendingTotal {
    return _weekTransactionValues.fold(0.0, (sum, value) {
      return (sum + (value['amount'] as double));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: _weekTransactionValues.map(
        (value) {
          return Flexible(
            fit: FlexFit.tight,
            child: ChartBar(
              value['day'].toString(),
              (value['amount'] as double),
              _spendingTotal == 0
                  ? 0
                  : (value['amount'] as double) / _spendingTotal,
            ),
          );
        },
      ).toList(),
    );
  }
}
