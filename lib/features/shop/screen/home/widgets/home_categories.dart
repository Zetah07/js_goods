import 'package:flutter/material.dart';
import 'package:js_goods/utils/constants/images_strings.dart';
import 'package:js_goods/utils/constants/text_strings.dart';

import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';


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
          return  const TVerticalImageText(image: TImages.sportIcon, title: TTexts.popularCategories,);
        },
      ),
    );
  }
}
