import 'package:flutter/material.dart';

import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../common/widgets/appbar/primary_header_container.dart';

import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';
import 'widgets/search_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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
                      TSectionHeading(
                        title: TTexts.popularCategories,
                        textColor: Colors.white,
                      ),
                      SizedBox(height: TSizes.spaceBtwSections),

                      //Searchbar
                      TSearchContainer(text: TTexts.search),
                      SizedBox(height: TSizes.spaceBtwSections),

                      //Categories
                      THomeCategories(),
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
