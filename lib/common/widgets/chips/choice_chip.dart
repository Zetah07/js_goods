import 'package:flutter/material.dart';
import 'package:js_goods/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:js_goods/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip(
      {super.key,
      required this.text,
      required this.selected,
      this.onSelected,
      this.onTap});

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isColor = THelperFuntions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
          label: isColor ? const SizedBox() : Text(text),
          selected: selected,
          onSelected: onSelected,
          labelStyle: TextStyle(color: selected ? TColors.white : null),
          avatar: isColor
              ? TCircularContainer(
                  width: 50,
                  height: 50,
                  backgroundColor: THelperFuntions.getColor(text)!,
                )
              : null,
          shape: isColor ? const CircleBorder() : null,
          labelPadding: isColor ? const EdgeInsets.all(0) : null,
          padding: isColor ? const EdgeInsets.all(0) : null,
          selectedColor:
              isColor ? THelperFuntions.getColor(text)! : null,
          backgroundColor: isColor ? THelperFuntions.getColor(text)! : null,
      ),
    );
  }
}
