import 'package:flutter/material.dart';

class BillingScreen extends StatelessWidget {
  const BillingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Billing Screen')),
      body: const Center(child: Text('Welcome to the Billing Screen!')),
    );
  }
}
