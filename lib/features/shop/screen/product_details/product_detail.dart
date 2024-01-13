import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:js_goods/common/widgets/appbar/appbar.dart';
import 'package:js_goods/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:js_goods/common/widgets/icons/t_circular_icon.dart';
import 'package:js_goods/common/widgets/images/t_rounded_image.dart';
import 'package:js_goods/features/shop/screen/product_details/widgets/product_image_slider.dart';
import 'package:js_goods/features/shop/screen/product_details/widgets/rating_share_widget.dart';
import 'package:js_goods/utils/constants/images_strings.dart';
import 'package:js_goods/utils/constants/sizes.dart';
import 'package:js_goods/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import 'widgets/product_meta_data.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuntions.isDarkMode(context);
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // - Product Image Slider
            TProductImageSlider(),
            // - Product Details
            TRatingAndShare(),
            // - Price, Title, Stock & Brand
            
            // -- Attributes
          ],
        ),
      ),
    );
  }
}
