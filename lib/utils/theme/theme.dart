import 'package:flutter/material.dart';
import 'package:js_goods/utils/theme/custom/appbar_theme.dart';
import 'package:js_goods/utils/theme/custom/custom_themes.dart';
import 'package:js_goods/utils/theme/custom/elevated_button_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: const Color(0xFF6200EE),
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme
  );
  
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: const Color(0xFF6200EE),
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtomTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme
  );
}