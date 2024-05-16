import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample_bloc/constants/app_colors.dart';
import 'package:sample_bloc/constants/app_text_style.dart';

abstract class AppTheme {
  static ThemeData get lightTheme => ThemeData(
        appBarTheme: _appBarTheme,
        brightness: Brightness.light,
        useMaterial3: false,
        scaffoldBackgroundColor: AppColors.white,
        textTheme: _textTheme,
      );

  static AppBarTheme get _appBarTheme => AppBarTheme(
        backgroundColor: AppColors.white,
        elevation: 1,
        centerTitle: false,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        titleTextStyle: _textTheme.bodyLarge?.copyWith(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.8,
        ),
      );

  static TextTheme get _textTheme {
    return TextTheme(
      displayLarge: AppTextStyle.displayLarge,
      displayMedium: AppTextStyle.displayMedium,
      displaySmall: AppTextStyle.displaySmall,
      headlineLarge: AppTextStyle.headline,
      headlineMedium: AppTextStyle.headlineMedium,
      headlineSmall: AppTextStyle.headlineSmall,
      bodyLarge: AppTextStyle.bodyLarge,
      bodyMedium: AppTextStyle.bodyMedium,
      bodySmall: AppTextStyle.bodySmall,
      labelLarge: AppTextStyle.label,
    );
  }
}
