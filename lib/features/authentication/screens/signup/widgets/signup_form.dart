import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

import '../../../../../utils/validator/validations.dart';
import '../../../controllers/signup/signup_controller.dart';
import 'term_conditions_checkbox.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              //-- First Name
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) =>
                      TValidator.validateEmptyText(TTexts.firstName, value),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwInputFields),

              //-- Last Name
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) =>
                      TValidator.validateEmptyText(TTexts.lastName, value),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.lastName,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwSections),

          //-- Username
          TextFormField(
            controller: controller.username,
            validator: (value) =>
                TValidator.validateEmptyText(TTexts.username, value),
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.user),
              labelText: TTexts.username,
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwSections),

          //-- Email
          TextFormField(
            controller: controller.email,
            validator: (value) => TValidator.validateEmail(value),
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: TTexts.email,
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwSections),

          //-- Phone Number
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) =>
                TValidator.validatePassword(value),
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.call),
              labelText: TTexts.phoneNo,
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwSections),

          //-- Password
          TextFormField(
            controller: controller.password,
            validator: (value) =>
                TValidator.validatePassword(value),
            obscureText: true,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TTexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwSections),

          const SizedBox(height: TSizes.spaceBtwSections),

          //-- Terms & Conditions checkbox
          const TTermsAndConditionCheckbox(),
          const SizedBox(height: TSizes.spaceBtwSections),

          //-- Sign Up button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.signUp(),
              child: const Text(TTexts.createAcoount),
            ),
          ),
        ],
      ),
    );
  }
}
