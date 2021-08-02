import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double spent;
  final double spendingPercentage;
  ChartBar(this.label, this.spent, this.spendingPercentage);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: constraints.maxHeight * 0.15,
            child: FittedBox(
              child: Text(
                '\$${spent.toStringAsFixed(0)}',
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ),
          ),
          SizedBox(height: constraints.maxHeight * 0.05),
          Container(
            height: constraints.maxHeight * 0.5,
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
          SizedBox(height: constraints.maxHeight * 0.05),
          Container(
            height: constraints.maxHeight * 0.15,
            child: FittedBox(
              child: Text(label, style: Theme.of(context).textTheme.subtitle2),
            ),
          ),
        ],
      );
    });
  }
}
