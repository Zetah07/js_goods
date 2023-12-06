import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:js_goods/features/authentication/screens/login/login.dart';
import 'package:js_goods/utils/constants/images_strings.dart';
import 'package:js_goods/utils/constants/sizes.dart';
import 'package:js_goods/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/text_strings.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed:()=> Get.offAll(()=> const LoginScreen()), 
            icon: const Icon(CupertinoIcons.clear)
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                //Image
                Image(
                  image: const AssetImage(TImages.productsIllustration),
                  width: THelperFuntions.screenWidth() * 0.6,
                ),
                const SizedBox(height: TSizes.spaceBtwSections),

                //Title & Subtitle
                Text( TTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
                const SizedBox(height: TSizes.spaceBtwItems),
                Text('support@jsgoods.com', style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
                const SizedBox(height: TSizes.spaceBtwSections),
                Text( TTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center),

                //Buttons
              ],
            )),
      ),
    );
  }
}