import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:js_goods/data/repositories/authentication/authetication_repository.dart';
import 'package:js_goods/data/repositories/user/user_repository.dart';
import 'package:js_goods/utils/constants/images_strings.dart';
import 'package:js_goods/utils/constants/text_strings.dart';
import 'package:js_goods/utils/popups/loaders.dart';

import '../../../../utils/helpers/network_manager.dart';
import '../../../../utils/popups/full_screen_loader.dart';
import '../../../personalization/models/user_model.dart';
import '../../screens/signup/verify_email.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  /// Variables
  final hidePassword = true.obs;
  final privacyPolicy = false.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  ///---  SIGNUP
  Future<void> signUp() async { // future maybe void
    try {
      // Start Loading
      TFullScreenLoader.openLoadingDialog(
          TTexts.processingInfo, TImages.docerAnimation);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConected();
      if (!isConnected) return;

      //Form Validation
      if (!signupFormKey.currentState!.validate()) return;

      //Privacy Policy Check
      if (!privacyPolicy.value) {
        TLoaders.warningSnackBar(
            title: TTexts.acceptPrivacyPolicy, message: TTexts.privacyPolicyError);
        return;
      }

      //Register User in the firebase authentication and save user data in the firebase
      final userCredential = await AuthenticationRepository.instance.registerUserWithEmailAndPassword(
        email.text.trim(),
        password.text.trim(),
      );

      // Save authenticatd user data in the firebase firestore
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        username: username.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture:'',
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      // Show success message
      TLoaders.successSnackBar(
          title: TTexts.success, message: TTexts.accountCreated);

      // Move to verify email screen
      Get.to(() => VerifyEmailScreen(email: email.text.trim()));

    } catch (e) {
      // Show error message
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      // Stop Loading
      TFullScreenLoader.stopLoading();
    }
  }
}
