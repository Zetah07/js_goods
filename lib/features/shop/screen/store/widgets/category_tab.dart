import 'package:flutter/material.dart';
import 'package:js_goods/common/widgets/layout/grid_layout.dart';
import 'package:js_goods/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:js_goods/common/widgets/texts/section_heading.dart';

import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../utils/constants/images_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics:  const NeverScrollableScrollPhysics(),
      children:[ 
      Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            // Featured Brands
            const TBrandShowcase(images: [
              TImages.productImage43,
              TImages.productImage44,
              TImages.productImage45,
            ]),
            const TBrandShowcase(images: [
              TImages.productImage43,
              TImages.productImage44,
              TImages.productImage45,
            ]),
      
            //Products
            TSectionHeading(title: 'You might like', onPressed: () {}),
            const SizedBox(height: TSizes.spaceBtwItems),
      
            TGirdLayout(
              itemCount: 4,
              itemBuilder: (context, index) => const TProductCardVertical(),
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
          ],
        ),
      ),
      ],
    );
  }
}
