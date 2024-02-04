import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:js_goods/utils/constants/colors.dart';

class TLoaders extends GetxController {
  static TLoaders get instance => Get.find();

  static successSnackBar({required title, message = '', duration = 3}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: Colors.white,
      backgroundColor: TColors.success,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: duration),
      margin: const EdgeInsets.all(10),
      icon: const Icon(Iconsax.check, color: TColors.white),
    );
  }

  static warningSnackBar({required title, message = ''}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: TColors.white,
      backgroundColor: TColors.warning,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(20),
      icon: const Icon(Iconsax.warning_2, color: TColors.white),
    );
  }

  static errorSnackBar({required title, message = ''}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: TColors.white,
      backgroundColor: TColors.error,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(20),
      icon: const Icon(Iconsax.close_square, color: TColors.white),
    );
  }

  
}