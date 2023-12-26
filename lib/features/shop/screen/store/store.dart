import 'package:flutter/material.dart';

import 'package:js_goods/common/widgets/appbar/appbar.dart';
import 'package:js_goods/common/widgets/appbar/tabbar.dart';
import 'package:js_goods/common/widgets/layout/grid_layout.dart';
import 'package:js_goods/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:js_goods/common/widgets/texts/section_heading.dart';
import 'package:js_goods/features/shop/screen/home/widgets/search_container.dart';
import 'package:js_goods/features/shop/screen/store/widgets/category_tab.dart';
import 'package:js_goods/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/brands/brand_card.dart';
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
                            children: [
                              TSectionHeading(
                                  title: 'Featured Brands', onPressed: () {}),
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
              body: const TabBarView(
                children: [
                  CategoryTab(),
                  CategoryTab(),
                  CategoryTab(),
                  CategoryTab(),
                  CategoryTab(),
                ],
              ))),
    );
  }
}
