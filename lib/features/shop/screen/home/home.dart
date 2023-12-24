import 'package:flutter/material.dart';
import 'package:js_goods/utils/constants/images_strings.dart';

import '../../../../common/widgets/layout/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../common/widgets/appbar/primary_header_container.dart';

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
          const PrimaryHeaderContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Appbar
                THomeAppBar(),
                SizedBox(height: TSizes.spaceBtwSections),

                //Search
                TSearchContainer(text: TTexts.search),
                SizedBox(height: TSizes.spaceBtwSections),

                //Categories and heading
                Padding(
                  padding: EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      //Heading
                      TSectionHeading(
                        title: TTexts.popularCategories,
                        textColor: Colors.white,
                      ),
                      SizedBox(height: TSizes.spaceBtwSections),

                      //Categories
                      THomeCategories(),
                    ],
                  ),
                ),
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

