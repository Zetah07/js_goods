import 'package:flutter/material.dart';

import '../../../../utils/helpers/helper_functions.dart';
import 'widgets/product_image_slider.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuntions.isDarkMode(context);
    return const Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          //1- Product Image Slider
          TProductImageSlider(),

          //2- Product Detail

        ],
      )),
    );
  }
}
