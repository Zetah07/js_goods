import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:js_goods/utils/constants/images_strings.dart';

import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../sub_category/sub_categories.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 12,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TVerticalImageText(
              image: TImages.sportIcon,
              title: 'Shoes',
              onTap: () => Get.to(() => const SubCategoriesScreen()));
        },
      ),
    );
  }
}
