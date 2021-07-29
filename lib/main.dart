import 'package:flutter/material.dart';

import 'constants/transaction_list.dart';
// import 'widgets/transaction.dart';
import 'widgets/container_card.dart';
import 'widgets/transaction_card.dart';
import 'widgets/new_transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expenses',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(title: 'Expenses'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ContainerCard('Weekly Balance'),
          NewTransaction(() {}),
          Column(
            children: transactions.map((tx) {
              return TransactionCard(tx);
            }).toList(),
          )
        ],
      ),
    );
  }
}
