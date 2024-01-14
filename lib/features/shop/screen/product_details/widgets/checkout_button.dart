import 'package:flutter/material.dart';
import 'package:js_goods/utils/constants/sizes.dart';

class TCheckoutButton extends StatelessWidget {
  const TCheckoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.spaceBtwSections),
      child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(onPressed: () {}, child: const Text('Checkout'))),
    );
  }
}
