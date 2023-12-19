import 'package:flutter/material.dart';

import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/images_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../common/widgets/appbar/primary_header_container.dart';

import 'widgets/home_appbar.dart';
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
          PrimaryHeaderContainer(
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
                      TSectionHeading(title: TTexts.popularCategories),
                      SizedBox(height: TSizes.spaceBtwSections),

                      //Categories
                      SizedBox(
                        height: 80,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 6,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, index) {
                            return Column(
                              children: [
                                Container(
                                  height: 56,
                                  width: 56,
                                  padding: const EdgeInsets.all(TSizes.sm),
                                  decoration: BoxDecoration(
                                    color: TColors.light,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: const Center(
                                    child: Image(
                                      image: AssetImage(TImages.sportIcon),
                                      fit: BoxFit.cover,
                                      color: TColors.dark,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                    height: TSizes.spaceBtwItems / 2),
                                Text(
                                  TTexts.shoes,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium!
                                      .apply(color: TColors.white),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
