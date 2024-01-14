import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class TChipTheme {
  TChipTheme._();

  static ChipThemeData lightChipTheme =const ChipThemeData(
    disabledColor: TColors.white,
    labelStyle: TextStyle(color: TColors.black),
    selectedColor: TColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: TColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: TColors.white,
    labelStyle: TextStyle(color: TColors.white),
    selectedColor: TColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: TColors.white,
  );
}