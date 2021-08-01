import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// import '../models/transaction.dart';
// import './new_transaction.dart';
import './transaction_list.dart';

class TransactionCard extends StatelessWidget {
  final int index;
  const TransactionCard(this.index);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Theme.of(context).primaryColor,
      child: ListTile(
        leading: Padding(
          padding: EdgeInsets.all(2),
          child: CircleAvatar(
            radius: 30,
            child: FittedBox(child: Text('\$${transactions[index].amount}')),
          ),
        ),
        title: Text(
          transactions[index].title,
          style: Theme.of(context).textTheme.headline6,
        ),
        subtitle: Text(
          DateFormat.yMd().format(transactions[index].date).toString(),
          style: Theme.of(context).textTheme.subtitle2,
        ),
        trailing: null,
      ),
    );
  }
}

// class TransactionCard extends StatelessWidget {
//   final Transaction tx;

//   TransactionCard(this.tx);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(20),
//       ),
//       color: Theme.of(context).primaryColor,
//       child: Container(
//         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             Container(
//               padding: EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 shape: BoxShape.rectangle,
//                 border: Border.all(
//                   color: Theme.of(context).primaryColorLight,
//                   width: 2,
//                 ),
//               ),
//               child: Text(
//                 '\$${double.parse((tx.amount).toStringAsFixed(2))}',
//                 style: Theme.of(context).textTheme.headline6,
//               ),
//             ),
//             Column(
//               children: <Widget>[
//                 Text(
//                   tx.title,
//                   style: Theme.of(context).textTheme.headline6,
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Text(
//                   DateFormat.yMd('en_US').add_jm().format(tx.date),
//                   style: Theme.of(context).textTheme.subtitle2,
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
