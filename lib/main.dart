import 'package:flutter/material.dart';

import 'widgets/transaction_list.dart';
import 'models/transaction.dart';
import 'widgets/weekly_balance_card.dart';
// import './widgets/transaction_card.dart';
import './widgets/new_transaction.dart';
// import './widgets/user_transactions.dart';
import './constants/default_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expenses',
      theme: themeData(),
      home: MyHomePage(title: 'Expenses'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({required this.title});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
        backgroundColor: Theme.of(context).primaryColor,
        context: ctx,
        builder: (_) {
          return SingleChildScrollView(
            child: GestureDetector(
              onTap: () {},
              child: NewTransaction(_addNewTransaction),
              behavior: HitTestBehavior.opaque,
            ),
          );
        });
  }

  void _addNewTransaction(String title, double amount) {
    final newTx = Transaction(
      amount: amount,
      title: title,
      id: '0',
      date: DateTime.now(),
    );

    setState(() {
      transactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColorDark,
        appBar: AppBar(
          title: Text(widget.title),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () => _startAddNewTransaction(context),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              WeeklyBalanceCard('Weekly Balance'),
              TransactionList(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          onPressed: () => _startAddNewTransaction(context),
          child: Icon(Icons.add, color: Theme.of(context).primaryColorLight),
        ));
  }
}
