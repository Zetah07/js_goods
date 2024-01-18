import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: const Center(
        child: Text('Checkout Screen'),
      ),
    );
  }
}