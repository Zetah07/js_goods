
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../features/authentication/screens/login/login.dart';
import '../../../features/authentication/screens/onboarding/onboarding.dart';
import '../../../utils/exceptions/firebase_auth_exceptions.dart';
import '../../../utils/exceptions/firebase_exceptions.dart';
import '../../../utils/exceptions/format_exeptions.dart';
import '../../../utils/exceptions/platform_exceptions.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  /// Variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

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
  Future<UserCredential> registerUserWithEmailAndPassword(String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
      } on FirebaseAuthException catch (e) {
        throw TFirebaseAuthException(e.code).message;
      } on FirebaseException catch (e) {
        throw TFirebaseException(e.code).message;
      } on FormatException catch (_){
        throw  TFormatException();
      } on PlatformException catch (e) {
        throw TPlatformException(e.code).message;
      } catch (e) {
        throw 'Something went wrong. Please try again';
      }
  }

  /// [ReAuthenticate] - ReAuthenticate User
  Future<void> sendEmailVerification() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_){
      throw  TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }
  /// [EmailVerification] - Send Email Verification
  /// [EmailAuthentication] - Forget Password
  
  
  /* ------------ Federated identity & social sign-in ------------ */
  
  /// [GoogleAuthentication] - GOOGLE
  /// [FacebookAuthentication] - FACEBOOK
  
  
  /* ------------ ./end Federated identity & social sign-in ------------ */

  /// [LogoutUser] - Valid for any authentication.
  
  /// [DeleteUser] - Delete User Account

}