import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:js_goods/utils/constants/sizes.dart';
import 'package:js_goods/utils/constants/colors.dart';
import 'package:js_goods/utils/device/device_utility.dart';
import 'package:js_goods/utils/helpers/helper_functions.dart';
import 'package:js_goods/features/authentication/controllers/onboarding/onboarding_controller.dart';


class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuntions.isDarkMode(context);

    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape:  const CircleBorder(), 
          backgroundColor: dark? TColors.primary :  TColors.dark,
        ),
        child: const Icon(Iconsax.arrow_right_3),
    
      ),
    );
  }
}
