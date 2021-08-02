import 'dart:io'; //iOS

import 'package:flutter/cupertino.dart'; //iOS
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

import './constants/default_theme.dart';
import './models/transaction.dart';
import './widgets/transaction_list.dart';
import './widgets/new_transaction.dart';
import './widgets/chart.dart';
// import 'widgets/weekly_balance_card.dart';
// import './widgets/transaction_card.dart';
// import './widgets/user_transactions.dart';

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

  bool _showChart = false;

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);
    final _isLandscape = _mediaQuery.orientation == Orientation.landscape;
    final PreferredSizeWidget _appBar = (Platform.isIOS
        ? CupertinoNavigationBar(
            middle: Text('Expenses'),
            trailing: Row(
              mainAxisSize:
                  MainAxisSize.min, //takes all the space it needs for child
              children: <Widget>[
                GestureDetector(
                    child: Icon(CupertinoIcons.add),
                    onTap: () => _startAddNewTransaction(context)),
              ],
            ))
        : AppBar(
            title: Text(widget.title),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () => _startAddNewTransaction(context),
              )
            ],
          ) as PreferredSizeWidget);
    final _availableHeight = _mediaQuery.size.height -
        _appBar.preferredSize.height -
        _mediaQuery.padding.top;
    final _pageBody = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        _isLandscape
            ? Container(
                height: _availableHeight * 0.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Show chart',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontWeight: FontWeight.normal),
                    ),
                    Switch.adaptive(
                        //for iOS
                        value: _showChart,
                        onChanged: (boolean) {
                          setState(() {
                            _showChart = boolean;
                          });
                        }),
                  ],
                ),
              )
            : Container(height: _availableHeight * 0.3, child: Chart()),
        _showChart
            ? Container(height: _availableHeight * 0.7, child: Chart())
            : Container(
                height: _availableHeight * 0.7,
                child: TransactionList(_deleteTransaction)),
      ],
    );

    return Platform.isIOS
        ? CupertinoPageScaffold(
            child: _pageBody,
            navigationBar: _appBar as ObstructingPreferredSizeWidget,
          )
        : Scaffold(
            backgroundColor: Theme.of(context).primaryColorDark,
            appBar: _appBar,
            body: _pageBody,
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            floatingActionButton: Platform.isIOS //iOS
                ? Container()
                : FloatingActionButton(
                    backgroundColor: Theme.of(context).primaryColorLight,
                    onPressed: () => _startAddNewTransaction(context),
                    child:
                        Icon(Icons.add, color: Theme.of(context).primaryColor),
                  ),
          );
  }
}
