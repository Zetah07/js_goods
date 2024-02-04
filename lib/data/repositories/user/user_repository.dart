import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:js_goods/utils/exceptions/platform_exceptions.dart';

import '../../../features/personalization/models/user_model.dart';
import '../../../utils/exceptions/firebase_exceptions.dart';
import '../../../utils/exceptions/format_exeptions.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  /// Function to save user data to Firestore.
  
  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.collection('users').doc(user.id).set(user.toJson());
    }  on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_){
      throw  TFormatException();
    } on PlatformException catch (e) {
      throw  TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  /// Function to fectch user details based on userID
  /// Function to update user data in Firestore.
  /// Update any field in specific Users collection
}