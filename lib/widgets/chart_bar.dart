import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double spent;
  final double spendingPercentage;
  ChartBar(this.label, this.spent, this.spendingPercentage);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '\$${spent.toStringAsFixed(0)}',
          style: Theme.of(context).textTheme.subtitle2,
        ),
        SizedBox(height: 4),
        Container(
          height: 80,
          width: 15,
          child: Stack(
            alignment: AlignmentDirectional.bottomEnd,
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
              ),
              FractionallySizedBox(
                heightFactor: spendingPercentage,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).primaryColorDark,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 4),
        Text(label, style: Theme.of(context).textTheme.subtitle2),
      ],
    );
  }
}
