import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';
import 'widgets/product_image_slider.dart';

import 'widgets/product_meta_data.dart';
import 'widgets/rating_share_widget.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          //1- Product Image Slider
          TProductImageSlider(),

          // //2- Product Detail
          Padding(
            padding: EdgeInsets.only(
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

