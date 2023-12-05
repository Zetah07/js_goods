import 'package:flutter/material.dart';

class TColors {
  TColors._();

  static const Color primary = Color(0xFF6200EE);
  static const Color secondary = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFB0C7FF);

  static const Gradient linesGradient = LinearGradient(
    begin: Alignment(0.0,0.0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xFFFF9A9E),
      Color(0xFFFAD8C4),
      Color(0XFFFAD8C4),
    ]
  );

  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textWhite = Colors.white;

  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F3F3);
  static const Color darkGrey = Color(0xFF333333);
  static const Color lightGrey = Color(0xFF6C757D);

  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = Colors.white.withOpacity(0.1);
}