
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

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
  screenRedirect() async {}


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