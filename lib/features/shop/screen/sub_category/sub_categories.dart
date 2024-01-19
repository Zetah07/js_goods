import 'package:flutter/material.dart';
import 'package:js_goods/common/widgets/appbar/appbar.dart';
import 'package:js_goods/common/widgets/images/t_rounded_image.dart';
import 'package:js_goods/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:js_goods/common/widgets/texts/section_heading.dart';

import '../../../../utils/constants/images_strings.dart';
import '../../../../utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Sports Shirts'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///---Banner
              const TRoundedImage(
                  width: double.infinity,
                  imageUrl: TImages.banner3,
                  applyImageRadius: true),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///---Sub Categories
              Column(
                children: [
                  /// Heading
                  TSectionHeading(title: 'Sports shirts', onPressed: () {}),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),

                  SizedBox(
                    height: 140,
                    child: ListView.separated(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: TSizes.spaceBtwItems),
                        itemBuilder: (contex, index) =>
                            const TProductCardHorizontal()),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
