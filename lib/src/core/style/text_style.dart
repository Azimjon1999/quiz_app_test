// ignore_for_file: override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

@immutable
final class AppTextStyle extends TextTheme {
  const AppTextStyle();

  /// new text styles
  @override
  TextStyle? get displayLarge => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size90,
        fontFamily: "IrishGrover",
        color: AppColors.c0048B5,
      );

  @override
  TextStyle? get displayMedium => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size50,
        fontFamily: "IrishGrover",
        color: AppColors.c0048B5,
      );

  ///login page
  @override
  TextStyle? get labelLarge => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size16,
        fontFamily: "IrishGrover",
        color: AppColors.c7A7A7A,
      );

  @override
  TextStyle? get users => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size24,
        fontFamily: "IrishGrover",
        color: AppColors.white,
      );










  @override
  TextStyle? get titleLarge => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size40,
        fontFamily: "IrishGrover",
        color: AppColors.c0048B5,
      );

  @override
  TextStyle? get titleMedium => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size36,
        fontFamily: "IrishGrover",
        color: AppColors.c0048B5,
      );



  @override
  TextStyle? get titleSmall => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size22,
        fontFamily: "IrishGrover",
        color: AppColors.c0048B5,
      );



  @override
  TextStyle? get quizTest => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size30,
        fontFamily: "IrishGrover",
        color: AppColors.c0048B5,
      );

}

@immutable
final class FontSize {
  const FontSize._();

  static double size90 = 90.sp;
  static double size50 = 50.sp;
  static double size36 = 36.sp;
  static double size16 = 16.sp;
  static double size30 = 30.sp;
  static double size22 = 22.sp;
  static double size24 = 24.sp;
  static double size40 = 40.sp;
}
