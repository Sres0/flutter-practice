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
  void _addNewTransaction(String title, double amount, DateTime date) {
    final _newTx = Transaction(
      amount: amount,
      title: title,
      date: date,
      id: DateTime.now().toString(),
    );

    setState(() {
      transactions.add(_newTx);
    });
  }

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

  void _deleteTransaction(String id) {
    setState(() {
      transactions.removeWhere((tx) => tx.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: Text(widget.title),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () => _startAddNewTransaction(context),
        )
      ],
    );

    return Scaffold(
        backgroundColor: Theme.of(context).primaryColorDark,
        appBar: appBar,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: (MediaQuery.of(context).size.height -
                        appBar.preferredSize.height -
                        MediaQuery.of(context).padding.top) *
                    0.3,
                child: WeeklyBalanceCard('Weekly Balance'),
              ),
              Container(
                  height: (MediaQuery.of(context).size.height -
                          appBar.preferredSize.height -
                          MediaQuery.of(context).padding.top) *
                      0.7,
                  child: TransactionList(_deleteTransaction)),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColorLight,
          onPressed: () => _startAddNewTransaction(context),
          child: Icon(Icons.add, color: Theme.of(context).primaryColor),
        ));
  }
}
