
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../features/authentication/screens/login/login.dart';
import '../../../features/authentication/screens/onboarding/onboarding.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  /// Variables
  final deviceStorage = GetStorage();

  /// Called form main.dart on app launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }



  /// Function to show relevant Screen
  screenRedirect() async {
    // Local Storage
    deviceStorage.writeIfNull('IsFirstTime', true);
    deviceStorage.read('IsFirstTime') != true
        ? Get.offAll(() => const LoginScreen()) 
        : Get.offAll(() => const OnBoardingScreen());
  }


  /* ------------ Email and Password sign-in ------------ */

  /// [EmailAuthentication] - SignIn
  /// [EmailAuthentication] - Register
  /// [ReAuthenticate] - ReAuthenticate User
  /// [EmailVerification] - Send Email Verification
  /// [EmailAuthentication] - Forget Password
  
  
  /* ------------ Federated identity & social sign-in ------------ */
  
  /// [GoogleAuthentication] - GOOGLE
  /// [FacebookAuthentication] - FACEBOOK
  
  
  /* ------------ ./end Federated identity & social sign-in ------------ */

  /// [LogoutUser] - Valid for any authentication.
  
  /// [DeleteUser] - Delete User Account

}