import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  // final double spent;
  // final double spendingPercentage = 0.0;
  // ChartBar(this.label, this.spent, this.spendingPercentage);
  ChartBar(this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text('\$${spent.toStringAsFixed(0)}'),
        Text('\$$label'),
        SizedBox(height: 4),
        Container(
          height: 60,
          width: 10,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Theme.of(context).primaryColorDark,
                    width: 1,
                  ),
                  color: Theme.of(context).primaryColorLight,
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 4),
      ],
    );
  }
}
