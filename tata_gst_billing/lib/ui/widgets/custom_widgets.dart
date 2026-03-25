import 'package:flutter/material.dart';

class TaxBreakdownCard extends StatelessWidget {
  final String label;
  final double amount;

  const TaxBreakdownCard({
    Key? key,
    required this.label,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(label),
        trailing: Text(amount.toStringAsFixed(2)),
      ),
    );
  }
}

class ItemTile extends StatelessWidget {
  final String name;
  final double price;

  const ItemTile({
    Key? key,
    required this.name,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      trailing: Text(price.toStringAsFixed(2)),
    );
  }
}
