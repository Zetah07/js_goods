import 'package:flutter/material.dart';
import 'package:js_goods/common/widgets/appbar/appbar.dart';
import 'package:js_goods/common/widgets/images/t_rounded_container.dart';
import 'package:js_goods/common/widgets/layout/grid_layout.dart';
import 'package:js_goods/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:js_goods/common/widgets/texts/section_heading.dart';
import 'package:js_goods/common/widgets/texts/t_brand_title_with_verified_icon.dart';
import 'package:js_goods/features/shop/screen/home/widgets/search_container.dart';
import 'package:js_goods/utils/constants/enums.dart';
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
                                return GestureDetector(
                                  onTap: () {},
                                  child: TRoundedContainer(
                                    padding: const EdgeInsets.all(TSizes.sm),
                                    showBorder: true,
                                    backgroundColor: Colors.transparent,
                                    child: Row(
                                      children: [
                                        // Icon
                                        Flexible(
                                          child: TCircularImage(
                                            isNetwokImage: false,
                                            image: TImages.clothIcon,
                                            backgroundColor: Colors.transparent,
                                            overlayColor: dark
                                                ? TColors.white
                                                : TColors.black,
                                          ),
                                        ),
                                        const SizedBox(
                                            width: TSizes.spaceBtwItems / 2),
      
                                        // Text
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const TBrandTitleWithVerifiedIcon(
                                                title: 'Nike',
                                                brandTextSize: TextSize.large,
                                              ),
                                              Text(
                                                '256 products',
                                                overflow: TextOverflow.ellipsis,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelMedium,
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ],
                      ),
                    ),
      
                    // Tabs
                    bottom: TabBar(
                      isScrollable: true,
                      indicatorColor: TColors.primary,
                      unselectedLabelColor: TColors.darkGrey,
                      labelColor: dark ? TColors.white : TColors.primary,
                      tabs: const [
                        Tab(child: Text('Sports')),
                        Tab(child: Text('Furniture')),
                        Tab(child: Text('Electronics')),
                        Tab(child: Text('Clothes')),
                        Tab(child: Text('Cosmetics')),
                    ]),
                  ),
                ];
              },
              body: Container(
                color: Colors.green,
              ))),
    );
  }
}
