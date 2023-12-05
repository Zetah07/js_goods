import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:js_goods/common/styles/spacing_styles.dart';
import 'package:js_goods/common/widgets/login_signup/social_buttons.dart';
import 'package:js_goods/common/widgets/form_divider.dart';
import 'package:js_goods/utils/constants/sizes.dart';
import 'package:js_goods/utils/constants/text_strings.dart';

import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // logo Title & Subtitle
              const LoginHeader(),
              // Form
              const LoginForm(),
              // Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),
              //Footer Media Icons
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

