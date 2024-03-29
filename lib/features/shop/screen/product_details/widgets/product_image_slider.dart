import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/icons/t_circular_icon.dart';
import '../../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/images_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuntions.isDarkMode(context);
    return  TCurvedEdgeWidget(
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
                      bottom: 20,
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
                    TAppBar(
                      showBackArrow: true,
                      actions: [
                        TCircularIcon(
                          icon: Iconsax.heart5,
                          color: Colors.red,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
  }
}
