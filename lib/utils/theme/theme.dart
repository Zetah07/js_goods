import 'package:flutter/material.dart';
import 'package:js_goods/utils/theme/custom/appbar_theme.dart';
import 'package:js_goods/utils/theme/custom/bottom_sheet_theme.dart';
import 'package:js_goods/utils/theme/custom/checkbox_theme.dart';
import 'package:js_goods/utils/theme/custom/chip_theme.dart';
import 'package:js_goods/utils/theme/custom/outlined_button_theme.dart';
import 'package:js_goods/utils/theme/custom/text_field_theme.dart';
import 'package:js_goods/utils/theme/custom/text_theme.dart';
import 'package:js_goods/utils/theme/custom/elevated_button_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: const Color(0xFF6200EE),
    textTheme: TTextTheme.lightTheme,
    chipTheme: TChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.lightAppBarTheme, 
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme, 
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightImputDecorationTheme,
  );
  
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: const Color(0xFF4b68FF),
    textTheme: TTextTheme.darkTheme,
    chipTheme: TChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: TAppBarTheme.darkAppBarTheme, 
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme, 
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtomTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkImputDecorationTheme,
  );
}