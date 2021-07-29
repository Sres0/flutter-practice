import 'package:flutter/material.dart';

// import 'widgets/transaction.dart';
import 'widgets/container_card.dart';
import 'constants/transaction_list.dart';
import 'widgets/transaction_card.dart';

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
          CardForm(),
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
