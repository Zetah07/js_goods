import 'package:flutter/material.dart';
import 'package:js_goods/common/widgets/chips/choice_chip.dart';
import 'package:js_goods/common/widgets/images/t_rounded_container.dart';
import 'package:js_goods/common/widgets/texts/product_price_text.dart';
import 'package:js_goods/common/widgets/texts/product_title_text.dart';
import 'package:js_goods/common/widgets/texts/section_heading.dart';
import 'package:js_goods/utils/constants/colors.dart';
import 'package:js_goods/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/sizes.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuntions.isDarkMode(context);
    return Column(
      children: [
        // --Select Attribute Pricing & Description
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkGrey : TColors.grey,
          child: Column(
            children: [
              /// Title, price and stock status
              Row(
                children: [
                  const TSectionHeading(
                    title: 'Variations',
                    showActionButton: false,
                  ),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  Column(
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(
                              title: 'Price: ', smallSize: true),
                          const SizedBox(width: TSizes.spaceBtwItems),

                          // Actual price
                          Text('\$ 250',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .apply(
                                      decoration: TextDecoration.lineThrough)),
                          const SizedBox(width: TSizes.spaceBtwItems),

                          // Sale price
                          const TProductPriceText(price: '200'),
                        ],
                      ),

                      // Stock status
                      Row(
                        children: [
                          const TProductTitleText(
                              title: 'Stock: ', smallSize: true),
                          Text('In Stock',
                              style: Theme.of(context).textTheme.titleMedium!),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              /// Variation Description
              const TProductTitleText(
                title:
                    'This is the description of the Product and it can go up to max 4 lines',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        /// --Attribute
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Colors', showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              children: [
                TChoiceChip(
                    text: 'Green', selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: 'Blue', selected: true, onSelected: (value) {}),
                const TChoiceChip(
                    text: 'Yellow', selected: false,),
                TChoiceChip(
                    text: 'Red', selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: 'Purple', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
        Column(
          children: [
            const TSectionHeading(title: 'Sizes', showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: TSizes.spaceBtwItems / 2,
              children: [
                const TChoiceChip(
                  text: 'EU 32', selected: false,),
                TChoiceChip(
                    text: 'EU 34', selected: true, onSelected: (value) {}),
                TChoiceChip(
                    text: 'EU 36', selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: 'EU 38', selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: 'EU 40', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
