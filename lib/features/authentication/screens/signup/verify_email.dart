import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:js_goods/data/repositories/authentication/authetication_repository.dart';

import '../../../../utils/constants/images_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../controllers/signup/verify_email_controller.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key, this.email});

  final String? email;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyEmailController());
    return Scaffold(
        /// The close icon in the app bar is used to log out the user and redirect them to the login screen.
        /// this approach is taken to handle scenario where the user enters the registration process,
        /// and the data is stored. Upong reopening the app, it checks if the email is verified.
        /// If not verified, the app always navigates to the verification screen.
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed:()=> Get.offAll(()=> AuthenticationRepository.instance.logout()), 
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
                  image: const AssetImage(TImages.deliveredEmailIllustration),
                  width: THelperFuntions.screenWidth() * 0.6,
                ),
                const SizedBox(height: TSizes.spaceBtwSections),

                //Title & Subtitle
                Text( TTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
                const SizedBox(height: TSizes.spaceBtwItems),
                Text(email ?? '', style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center),
                const SizedBox(height: TSizes.spaceBtwSections),
                Text( TTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
                const SizedBox(height: TSizes.spaceBtwSections),

                //Buttons
                SizedBox(
                  width: double.infinity, child: ElevatedButton(
                    onPressed: controller.checkEmailVelificationStatus,
                    child: const Text(TTexts.tContinue),
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                SizedBox(
                  width: double.infinity, child: ElevatedButton(onPressed: () => controller.sendEmailVerification(), child: const Text(TTexts.resendEmail))
                ),
              ],
            )),
      ),
    );
  }
}