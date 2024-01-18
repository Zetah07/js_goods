import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:js_goods/utils/constants/enums.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import 't_brand_title_text.dart';

class TBrandTitleWithVerifiedIcon extends StatelessWidget {
  const TBrandTitleWithVerifiedIcon({
    super.key,
    this.textColor,
    this.maxLines = 1,
    required this.title,
    this.iconColor = TColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSize.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSize brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: TBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: TSizes.xs),
        const Icon(Iconsax.verify5,
            color: TColors.primary, size: TSizes.iconXs),
      ],
    );
  }
}
