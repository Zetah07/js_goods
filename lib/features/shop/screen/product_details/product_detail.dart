import 'package:flutter/material.dart';
// import 'package:js_goods/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/sizes.dart';
import 'widgets/bottom_add_cart_widget.dart';
import '../../../../common/widgets/buttons/checkout_button.dart';
import '../../../../common/widgets/texts/t_description_and_rating_text.dart';
import 'widgets/product_attributes.dart';
import 'widgets/product_image_slider.dart';
import 'widgets/product_meta_data.dart';
import 'widgets/rating_share_widget.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = THelperFuntions.isDarkMode(context);
    return const Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1- Product Image Slider
            TProductImageSlider(),
            // 2- Product Details
            Padding(
              padding: EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  TRatingAndShare(),
                  // - Price, Title, Stock & Brand
                  TProductMetaData(),
                  // -- Attributes
                  TProductAttributes(),
                  // -- Checkout Button
                  TCheckoutButton(),
                  // -- Description
                  TDescriptionRating()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
