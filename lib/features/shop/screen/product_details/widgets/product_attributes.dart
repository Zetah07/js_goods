import 'package:flutter/material.dart';
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
        //Select Attribute Pricing & Description
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkGrey : TColors.grey,
          child: Column(
            children: [
              //Title, Price and Stroc Status
              Row(
                children: [
                  const TSectionHeading(title: 'Variation', showActionButton: false,),
                  const SizedBox(width: TSizes.spaceBtwItems),

                  const TProductTitleText(title: 'Price : ', smallSize: true,),

                  Row(
                    children: [
                      Text('\$ 25', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
                      const SizedBox(width: TSizes.spaceBtwItems),
                      const TProductPriceText(price: '20')
                    ],
                  ),
                ],
              ),
              //Variation Description

            ],
          ),
        )
      ],
    );
  }
}