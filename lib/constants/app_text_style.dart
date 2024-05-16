import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_bloc/constants/app_colors.dart';

abstract class AppTextStyle {
  static final TextStyle _commonStyle = GoogleFonts.notoSans(color: AppColors.text);

  static TextStyle displayLarge = _commonStyle.copyWith(
    fontSize: 72,
    fontWeight: FontWeight.w500,
    letterSpacing: -1.5,
  );

  static TextStyle displayMedium = _commonStyle.copyWith(
    fontSize: 62,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.5,
  );

  static TextStyle displaySmall = _commonStyle.copyWith(
    fontSize: 49,
    fontWeight: FontWeight.w400,
  );

  static TextStyle headline = _commonStyle.copyWith(
    fontSize: 40,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.25,
  );

  static TextStyle headlineMedium = _commonStyle.copyWith(
    fontSize: 35,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  );

  static TextStyle headlineSmall = _commonStyle.copyWith(
    fontSize: 25,
    fontWeight: FontWeight.w400,
  );

  static TextStyle bodyLarge = _commonStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
  );

  static TextStyle bodyMedium = _commonStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  );

  static TextStyle bodySmall = _commonStyle.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
  );

  static TextStyle label = _commonStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.25,
  );
}
