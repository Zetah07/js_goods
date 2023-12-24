import 'package:flutter/material.dart';
import 'package:js_goods/common/widgets/appbar/appbar.dart';
import 'package:js_goods/common/widgets/images/t_rounded_container.dart';
import 'package:js_goods/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:js_goods/common/widgets/texts/section_heading.dart';
import 'package:js_goods/common/widgets/texts/t_brand_title_with_verified_icon.dart';
import 'package:js_goods/features/shop/screen/home/widgets/search_container.dart';
import 'package:js_goods/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/images/t_circular_image.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/images_strings.dart';
import '../../../../utils/constants/sizes.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuntions.isDarkMode(context);

    return Scaffold(
        appBar: TAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            TCartCounterIcon(
              onPressed: () {},
              iconColor: Colors.black,
            )
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: dark ? Colors.black : Colors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        //Search bar
                        const SizedBox(height: TSizes.spaceBtwItems),
                        const TSearchContainer(
                          text: 'Search in Store',
                          showBorder: true,
                          showBackgorund: false,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems),

                        //  Featured Brands
                        TSectionHeading(
                            title: 'Featured Brands', onPressed: () {}),
                        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                        TRoundedContainer(
                          padding: const EdgeInsets.all(TSizes.sm),
                          showBorder: true,
                          backgroundColor: Colors.transparent,
                          child: Row(
                            children: [
                              // Icon
                              TCircularImage(
                                isNetwokImage: false,
                                image: TImages.clothIcon,
                                backgroundColor: Colors.transparent,
                                overlayColor:
                                    dark ? TColors.white : TColors.black,
                              ),
                              const SizedBox(width: TSizes.spaceBtwItems / 2),

                              // Text
                              const Expanded(
                                child: Column(
                                  children: [
                                    TBrandTitleWithVerifiedIcon(
                                        title: 'Clothes'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ];
            },
            body: Container(
              color: Colors.green,
            )));
  }
}
