import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:js_goods/utils/constants/sizes.dart';
import 'package:readmore/readmore.dart';

import 'section_heading.dart';
import '../../../utils/constants/colors.dart';

class TDescriptionRating extends StatelessWidget {
  const TDescriptionRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top:TSizes.spaceBtwSections),
          child: TSectionHeading(
            title: 'Description',
            showActionButton: false,
          ),
        ),
        const ReadMoreText(
          'This is a Product description for nike sleeve less vest. This is a Product description for nike sleeve less vest.This is a Product description for nike sleeve less vest.This is a Product description for nike sleeve less vest.This is a Product description for nike sleeve less vest.This is a Product description for nike sleeve less vest.This is a Product description for nike sleeve less vest.This is a Product description for nike sleeve less vest.This is a Product description for nike sleeve less vest.',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Show more',
          trimExpandedText: 'Show less',
          moreStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w800,
            color: TColors.primary,
          ),
          lessStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w800,
            color: TColors.primary,
          ),
        ),
          //-- Reviews
          const Divider(),
          const SizedBox(height: TSizes.spaceBtwSections),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TSectionHeading(title: 'Reviews (199)', showActionButton: false),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Iconsax.arrow_right_2, size: 18),
                  color: TColors.primary),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwSections),
      ],
    );
  }
}
