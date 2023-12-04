import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:js_goods/features/authentication/controllers/onboarding/onboarding_controller.dart';

import 'package:js_goods/utils/constants/colors.dart';
import 'package:js_goods/utils/constants/sizes.dart';
import 'package:js_goods/utils/device/device_utility.dart';
import 'package:js_goods/utils/helpers/helper_functions.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuntions.isDarkMode(context);
    final controller = OnBoardingController.instance;

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() +25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(activeDotColor: dark? TColors.light :  TColors.dark, dotHeight: 6),
      ),
    );
  }
}

