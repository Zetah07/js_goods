import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:js_goods/utils/constants/images_strings.dart';
import 'package:js_goods/utils/constants/text_strings.dart';

import '../../../../utils/popups/full_screen_loader.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  /// Variables
  final email = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();
  
  ///---  SIGNUP 
  Future<void> signUp() async {
    try{
      // Start Loading
      TFullScreenLoader.openLoadingDialog(TTexts.processingInfo, TImages.animalIcon);

      // Check Internet Connectivity

      //Form Validation
      
      //Privacy Policy Check

      //Register User in the firebase authentication and save user data in the firebase

      // Save authenticatd user data in the firebase firestore

      // Show success message

      // Move to verify email screen
    } catch (e) {
      // Show error message
    } finally {
      // Stop Loading
    }
  }
}