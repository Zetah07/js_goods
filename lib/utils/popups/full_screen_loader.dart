import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:js_goods/utils/constants/colors.dart';
import 'package:js_goods/utils/helpers/helper_functions.dart';

import '../../common/widgets/loaders/animation_loader.dart';


class TFullScreenLoader {
  ///Open a full screen loading dialog with a given text and animation
  ///this method doesnt return anything
  ///
  ///Parameters:
  ///  -text: the text to be displayed in the loading dialog
  /// -animation: the kittue abunatuib ti ve shown

  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_) => PopScope(
        canPop: false,
        child: Container(
          color: THelperFuntions.isDarkMode(Get.context!) ? TColors.dark : TColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 250),
              TAnimationLoaderWidget(text: text, animation: animation),
            ],
          ),
        ),
      ),
    );
  }
  