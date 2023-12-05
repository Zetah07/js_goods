import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:js_goods/common/styles/spacing_styles.dart';
import 'package:js_goods/utils/constants/images_strings.dart';
import 'package:js_goods/utils/constants/sizes.dart';
import 'package:js_goods/utils/constants/text_strings.dart';
import 'package:js_goods/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuntions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // logo Title & Subtitle
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(dark ? TImages.darkAppLogo : TImages.lightAppLogo),
                  ),
                  Text(TTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: TSizes.sm),
                  Text(TTexts.loginSubTitle, style: Theme.of(context).textTheme.headlineMedium),
                ],
              ),

              // Form
              Form(child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon( Iconsax.direct_right, 
                      color: Theme.of(context).iconTheme.color),
                      ),
                  ),
                    ],
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}