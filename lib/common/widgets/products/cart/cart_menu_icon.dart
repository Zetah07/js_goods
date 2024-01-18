import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:js_goods/features/shop/screen/cart/cart.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/helpers/helper_functions.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key,
    required this.onPressed,
    this.iconColor = TColors.white,
    this.counterBgColor,
    this.counterTextColor,
  });

  final VoidCallback onPressed;
  final Color? iconColor, counterBgColor, counterTextColor;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuntions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
          icon: const Icon(Iconsax.shopping_bag),
          onPressed: () => Get.to(() => const CartScreen()),
          color: iconColor,
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: counterBgColor ?? (dark ? TColors.white : TColors.black),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text("2",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: counterTextColor, fontSizeFactor: 0.8)),
            ),
          ),
        ),
      ],
    );
  }
}
