import 'package:flutter/material.dart';

import 'package:js_goods/utils/constants/images_strings.dart';
import 'package:js_goods/utils/constants/sizes.dart';
import 'package:js_goods/utils/constants/text_strings.dart';
import 'package:js_goods/utils/helpers/helper_functions.dart';


class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuntions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
              dark ? TImages.lightAppLogo : TImages.darkAppLogo),
        ),
        Text(TTexts.loginTitle,
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: TSizes.sm),
        Text(TTexts.loginSubTitle,
            style: Theme.of(context).textTheme.headlineMedium),
      ],
    );
  }
}
