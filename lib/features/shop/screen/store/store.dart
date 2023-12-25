import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:js_goods/common/widgets/appbar/appbar.dart';
import 'package:js_goods/common/widgets/appbar/tabbar.dart';
import 'package:js_goods/common/widgets/images/t_rounded_container.dart';
import 'package:js_goods/common/widgets/layout/grid_layout.dart';
import 'package:js_goods/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:js_goods/common/widgets/texts/section_heading.dart';
import 'package:js_goods/common/widgets/texts/t_brand_title_with_verified_icon.dart';
import 'package:js_goods/features/shop/screen/home/widgets/search_container.dart';
import 'package:js_goods/utils/constants/enums.dart';
import 'package:js_goods/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/card/brand_card.dart';
import '../../../../common/widgets/images/t_circular_image.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/images_strings.dart';
import '../../../../utils/constants/sizes.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuntions.isDarkMode(context);

    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TSectionHeading(
                                  title: 'Featured Brands', onPressed: () {}),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'View All',
                                  style: dark
                                      ? Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .apply(color: TColors.white)
                                      : Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(color: TColors.black),
                                ),
                              )
                            ],
                          ),

                          const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                          TGirdLayout(
                              itemCount: 4,
                              mainAxisExtent: 80,
                              itemBuilder: (_, index) {
                                return const TBrandCard(
                                  showBorder: false,
                                );
                              }),
                        ],
                      ),
                    ),

                    // Tabs
                    bottom: const TTabBar(tabs: [
                      Tab(text: 'Sports'),
                      Tab(text: 'Furniture'),
                      Tab(text: 'Electronics'),
                      Tab(text: 'Clothes'),
                      Tab(text: 'Cosmetics'),
                    ]),
                  ),
                ];
              },
              body: TabBarView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TRoundedContainer(
                          showBorder: true,
                          borderColor: TColors.darkGrey,
                          backgroundColor: Colors.transparent,
                          margin: const EdgeInsets.only(
                              bottom: TSizes.spaceBtwItems),
                          child: Column(
                            children: [
                              // Brand with Products Count
                              const TBrandCard(showBorder: true),

                              //Brand Top 3 Products Images
                              Row(
                                children: [
                                  Expanded(
                                    child: TRoundedContainer(
                                      height: 100,
                                      backgroundColor: dark
                                          ? TColors.darkerGrey
                                          : TColors.light,
                                      margin: const EdgeInsets.only(
                                          right: TSizes.sm),
                                      padding: const EdgeInsets.all(TSizes.md),
                                      child: const Image(
                                          fit: BoxFit.contain,
                                          image: AssetImage(
                                              TImages.productImage45)),
                                    ),
                                  ),
                                  Expanded(
                                    child: TRoundedContainer(
                                      height: 100,
                                      backgroundColor: dark
                                          ? TColors.darkerGrey
                                          : TColors.light,
                                      margin: const EdgeInsets.only(
                                          right: TSizes.sm),
                                      padding: const EdgeInsets.all(TSizes.md),
                                      child: const Image(
                                          fit: BoxFit.contain,
                                          image: AssetImage(
                                              TImages.productImage44)),
                                    ),
                                  ),
                                  Expanded(
                                    child: TRoundedContainer(
                                      height: 100,
                                      backgroundColor: dark
                                          ? TColors.darkerGrey
                                          : TColors.light,
                                      margin: const EdgeInsets.only(
                                          right: TSizes.sm),
                                      padding: const EdgeInsets.all(TSizes.md),
                                      child: const Image(
                                          fit: BoxFit.contain,
                                          image: AssetImage(
                                              TImages.productImage43)),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Center(child: Text('Furniture')),
                  const Center(child: Text('Electronics')),
                  const Center(child: Text('Clothes')),
                  const Center(child: Text('Cosmetics')),
                ],
              ))),
    );
  }
}
