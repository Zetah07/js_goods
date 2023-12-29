import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:js_goods/features/shop/screen/product_details/widgets/product_meta_data.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import 'widgets/product_image_slider.dart';
import 'widgets/rating_share_widget.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuntions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          //1- Product Image Slider
          const TProductImageSlider(),

          // //2- Product Detail
          Padding(
            padding: const EdgeInsets.only(
                left: TSizes.defaultSpace,
                right: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace),
            child: Column(
              children: [
                //Rating &  Share Button
                TRatingAndShare(),

                //       //Price, Title, Stock & Brand
                TProductMetaData(),
                //       //Attributes
                //       //Checkout Button
                //       //Description
                //       //Reviews
              ],
            ),
          ),
        ],
      )),
    );
  }
}

