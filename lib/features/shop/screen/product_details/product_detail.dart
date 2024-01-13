import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:js_goods/common/widgets/appbar/appbar.dart';
import 'package:js_goods/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:js_goods/common/widgets/icons/t_circular_icon.dart';
import 'package:js_goods/common/widgets/images/t_rounded_image.dart';
import 'package:js_goods/utils/constants/images_strings.dart';
import 'package:js_goods/utils/constants/sizes.dart';
import 'package:js_goods/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuntions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // - Product Image Slider
            TCurvedEdgeWidget(
              child: Container(
                color: dark ? TColors.darkerGrey : TColors.light,
                child: Stack(
                  children: [
                    // - Main Large Image
                    const SizedBox(
                        height: 400,
                        child: Padding(
                          padding:
                              EdgeInsets.all(TSizes.productImageRadius * 2),
                          child: Center(
                              child: Image(
                                  image: AssetImage(TImages.productImage38))),
                        )),

                    // - Image Slider
                    Positioned(
                      right: 0,
                      bottom: 30,
                      left: TSizes.defaultSpace,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        child:ListView.separated(
                          itemCount: 8,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          physics: const AlwaysScrollableScrollPhysics(),
                          separatorBuilder: (context, index) => const SizedBox(
                            width: TSizes.spaceBtwItems,
                          ),
                          itemBuilder: (_, index) => TRoundedImage(
                            width: 80,
                            backgroundColor: dark ? TColors.dark : TColors.white,
                            border: Border.all(color: TColors.primary),
                            padding: const EdgeInsets.all(TSizes.sm),
                            applyImageRadius: true,
                            imageUrl: TImages.productImage38,
                          ),
                        ), 
                      ),
                    ),

                    // - Appbar Icons
                    const TAppBar(
                      showBackArrow: true,
                      actions: [
                        TCircularIcon(
                          icon: Iconsax.heart5,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // - Product Details
          ],
        ),
      ),
    );
  }
}
