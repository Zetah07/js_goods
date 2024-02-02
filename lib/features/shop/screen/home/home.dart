import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:js_goods/features/shop/screen/all_products/all_products.dart';
import 'package:js_goods/utils/constants/images_strings.dart';

import '../../../../common/widgets/layout/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';

import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import 'widgets/promo_slider.dart';
import 'widgets/search_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          //Header
          
          TTPrimaryHeaderContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Appbar
                const THomeAppBar(),
                const SizedBox(height: TSizes.spaceBtwSections),

                //Search
                const TSearchContainer(text: TTexts.search),
                const SizedBox(height: TSizes.spaceBtwSections),

                //Categories and heading
                Padding(
                  padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      //Heading
                      TSectionHeading(
                        title: TTexts.popularCategories,
                        textColor: Colors.white,
                        onPressed: (){},
                      ),
                      const SizedBox(height: TSizes.spaceBtwSections),

                      //Categories
                      const THomeCategories(),
                    ],
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwSections),
              ],
            ),
          ),

          //Body
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                //Promo Slider
                const TPromoSlider(banners: [TImages.promoBanner1,TImages.promoBanner2, TImages.promoBanner3 ],),
                const SizedBox(height: TSizes.spaceBtwSections),

                //Heading
                TSectionHeading(
                  title: 'Popular Products',
                  onPressed: () => Get.to(() => const AllProducts()),
                ),
                const SizedBox(height: TSizes.spaceBtwItems),

                //Popular Products
                TGirdLayout(itemCount: 12, itemBuilder: (context, index) => const TProductCardVertical()),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

