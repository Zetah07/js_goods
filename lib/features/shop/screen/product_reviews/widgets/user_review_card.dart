import 'package:flutter/material.dart';
import 'package:js_goods/common/widgets/products/ratings/rating_indicator.dart';
import 'package:readmore/readmore.dart';

import '../../../../../common/widgets/images/t_rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/images_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuntions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                    backgroundImage: AssetImage(TImages.userProfileImage1)),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text('Harley Stefan',
                    style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert,
                    color: dark ? Colors.white : Colors.black)),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        /// - Review
        Row(
          children: [
            const TRatingBarIndicator(rating: 4),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('04 Jan 2024', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        const ReadMoreText(
            'In laboris consequat ut et esse non sint in esse. Nisi deserunt ad ipsum laborum non velit incididunt ut proident. Lorem fugiat aliquip incididunt dolore adipisicing nisi nostrud mollit mollit. Cillum nostrud consectetur mollit sunt sunt consequat amet voluptate nulla.. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nisi eget lectus molestie aliquet. Sed vitae nisi eget lectus molestie aliquet.',
            trimLines: 2,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'Show more',
            trimExpandedText: 'Show less',
            moreStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: TColors.primary),
            lessStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: TColors.primary)),
        const SizedBox(height: TSizes.spaceBtwItems),

        /// - Company Review
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkGrey : TColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "T's Store",
                      style: Theme.of(context).textTheme.titleMedium),
                    Text('02 Jan 2024',
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                const ReadMoreText(
                    'In laboris consequat ut et esse non sint in esse. Nisi deserunt ad ipsum laborum non velit incididunt ut proident. Lorem fugiat aliquip incididunt dolore adipisicing nisi nostrud mollit mollit. Cillum nostrud consectetur mollit sunt sunt consequat amet voluptate nulla.. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nisi eget lectus molestie aliquet. Sed vitae nisi eget lectus molestie aliquet.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Show less',
                    moreStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: TColors.primary),
                    lessStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: TColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),
      ],
    );
  }
}
