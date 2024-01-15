import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/ratings/rating_indicator.dart';
import '../../../../utils/constants/sizes.dart';

import 'widgets/rating_progress_indicator.dart';
import 'widgets/user_review_card.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar:
          const TAppBar(title: Text('Reviews & Ratings'), showBackArrow: true),
      // Body
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                  'Ratings and reviews are verified and are from people who use the same type of device that you use.',
                  style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// - Overall Product Ratings
              const TOverallProductRating(),
              const TRatingBarIndicator(rating: 4.6),
              Text('12,345', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// - User Reviews List
              const UserReviewCard(),
            ])),
      ),
    );
  }
}
