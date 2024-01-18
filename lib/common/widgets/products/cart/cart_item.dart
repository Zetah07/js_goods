import 'package:flutter/material.dart';

import '../../images/t_rounded_image.dart';
import '../../texts/product_title_text.dart';
import '../../texts/t_brand_title_with_verified_icon.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/images_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';



class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuntions.isDarkMode(context);
    return Row(
      children: [
        ///- Image
        TRoundedImage(
          imageUrl: TImages.productImage38,
          height: 60,
          width: 60,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor:
              dark ? TColors.darkGrey : TColors.lightGrey,
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
    
        ///- Title, Prices & Sizes
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TBrandTitleWithVerifiedIcon(title: 'Nike'),
              const Flexible(
                child: TProductTitleText(
                    title: 'Green T-Shirt', maxLines: 1),
              ),
          
              ///Atributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: 'Color ',
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: 'Green ',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge),
                    TextSpan(
                        text: 'Size ',
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: 'EU 42',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
