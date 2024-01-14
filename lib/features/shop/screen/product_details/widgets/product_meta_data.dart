import 'package:flutter/material.dart';
import 'package:js_goods/common/widgets/images/t_circular_image.dart';
import 'package:js_goods/common/widgets/images/t_rounded_container.dart';
import 'package:js_goods/common/widgets/texts/product_price_text.dart';
import 'package:js_goods/common/widgets/texts/product_title_text.dart';
import 'package:js_goods/common/widgets/texts/t_brand_title_with_verified_icon.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/enums.dart';
import '../../../../../utils/constants/images_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuntions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Price & Sale Price
        Row(
          children: [
            //Sale Tag
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text(
                '25% OFF',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.black),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),

            //Price
            Text('\$ 250',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: TSizes.spaceBtwItems),
            const TProductPriceText(price: '175', isLarge: true),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        //Title
        const TProductTitleText(title: 'Nike Wildhorse 6'),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        //Stock status
        Row(
          children: [
            const TProductTitleText(title: 'Status'),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        //Brand
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TCircularImage(
              image: TImages.cosmeticsIcon,
              width: 32,
              height: 32,
              overlayColor: dark ? TColors.white : TColors.black,
            ),
            const SizedBox(width: TSizes.sm),
            const Expanded(
              child: TBrandTitleWithVerifiedIcon(
                  title: 'Nike', brandTextSize: TextSize.medium),
            ),
          ],
        ),
      ],
    );
  }
}
