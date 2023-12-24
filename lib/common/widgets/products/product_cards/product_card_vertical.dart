import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:js_goods/common/widgets/images/t_rounded_image.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/images_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../styles/shadows.dart';
import '../../icons/t_circular_icon.dart';
import '../../images/t_rounded_container.dart';
import '../../texts/product_price_text.dart';
import '../../texts/product_title_text.dart';
import '../../texts/t_brand_title_with_verified_icon.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuntions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkGrey : Colors.white,
        ),
        child: Column(
          children: [
            //Thumbnail, WishList Button, Discount Tag
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  // Thumbnail Image
                  const TRoundedImage(
                    imageUrl: TImages.productImage38,
                    applyImageRadius: true,
                  ),

                  //Sale Tag
                  TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text(TTexts.offerTag,
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black)),
                  ),
                  //Favorite Button
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),

            //Details
            const Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(
                    title: TTexts.productName38,
                    smallSize: true,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems / 2),
                  TBrandTitleWithVerifiedIcon(title: 'Nike',),
                ],
              ),
            ),

            // Todo: Add Spacer() here to keep the height of each box same in case 1 or 2 lines of headings
            const Spacer(),

            //Price
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Price
                const Padding(
                  padding: EdgeInsets.only(left: TSizes.sm),
                  child: TProductPriceText(
                    price: '35.5',
                    isLarge: true,
                  ),
                ),

                //Add to Cart Button
                Container(
                    decoration: const BoxDecoration(
                      color: TColors.dark,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(TSizes.cardRadiusMd),
                        bottomRight: Radius.circular(TSizes.productImageRadius),
                      ),
                    ),
                    child: const SizedBox(
                        height: TSizes.iconLg * 1.2,
                        width: TSizes.iconLg * 1.2,
                        child: Center(
                            child: Icon(Iconsax.add, color: TColors.white)))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
