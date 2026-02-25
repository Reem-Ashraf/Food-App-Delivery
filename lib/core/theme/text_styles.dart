import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class TextStyles {
  static String poppinsFamilyName = "Poppins";

  static String arabicFontFamilyName = poppinsFamilyName;
  static String englishFontFamilyName = poppinsFamilyName;

  ///* Font fontFamilyName


  /// Regular text styles
  static TextStyle get regular11 => TextStyle(
    color: AppColors.textColor,
    fontSize: 40.sp, // 11 * 3.636 ≈ 40
    fontWeight: FontWeight.w400,
    height: 1.0.h,
  );

  static TextStyle get regular12 => TextStyle(
    color: AppColors.textColor,
    fontSize: 44.sp, // 12 * 3.636 ≈ 44
    fontWeight: FontWeight.w400,
    height: 1.0.h,
  );

  static TextStyle get regularGrey12 => TextStyle(
    color: AppColors.secondaryVariant,
    fontSize: 44.sp, // 12 * 3.636 ≈ 44
    fontWeight: FontWeight.w400,
    height: 1.0.h,
  );

  static TextStyle get regular13 => TextStyle(
    color: AppColors.textColor,
    fontSize: 47.sp, // 13 * 3.636 ≈ 47
    fontWeight: FontWeight.w400,
    height: 1.0.h,
  );

  static TextStyle get regular14 => TextStyle(
    color: AppColors.textColor,
    fontSize: 51.sp, // 14 * 3.636 ≈ 51
    fontWeight: FontWeight.w400,
    height: 1.0.h,
  );

  static TextStyle get regular15 => TextStyle(
    color: AppColors.textColor,
    fontSize: 55.sp, // 15 * 3.636 ≈ 55
    fontWeight: FontWeight.w400,
    height: 1.0.h,
  );

  static TextStyle get regular16 => TextStyle(
    color: AppColors.textColor,
    fontSize: 58.sp, // 16 * 3.636 ≈ 58
    fontWeight: FontWeight.w400,
    height: 1.0.h,
  );

  static TextStyle get regular16Grey => TextStyle(
    color: AppColors.secondaryVariant,
    fontSize: 58.sp, // 16 * 3.636 ≈ 58
    fontWeight: FontWeight.w400,
    height: 1.0.h,
  );

  static TextStyle get regular14Grey => TextStyle(
    color: AppColors.secondaryVariant,
    fontSize: 51.sp, // 14 * 3.636 ≈ 51
    fontWeight: FontWeight.w400,
    height: 1.0.h,
  );

  static TextStyle get regular18 => TextStyle(
    color: AppColors.textColor,
    fontSize: 65.sp, // 18 * 3.636 ≈ 65
    fontWeight: FontWeight.w400,
    height: 1.0.h,
  );

  static TextStyle get regular20 => TextStyle(
    color: AppColors.textColor,
    fontSize: 73.sp, // 20 * 3.636 ≈ 73
    fontWeight: FontWeight.w400,
    height: 1.0.h,
  );

  static TextStyle get regular22 => TextStyle(
    color: AppColors.textColor,
    fontSize: 80.sp, // 22 * 3.636 = 80
    fontWeight: FontWeight.w400,
    height: 1.0.h,
  );

  static TextStyle get regular24 => TextStyle(
    color: AppColors.textColor,
    fontSize: 87.sp, // 24 * 3.636 ≈ 87
    fontWeight: FontWeight.w400,
    height: 1.0.h,
  );

  /// Medium text styles

  static TextStyle get medium10 => TextStyle(
    color: AppColors.textColor,
    fontSize: 36.sp, // 10 * 3.636 ≈ 36
    fontWeight: FontWeight.w500,
    height: 1.0.h,
  );

  static TextStyle get medium11 => TextStyle(
    color: AppColors.textColor,
    fontSize: 40.sp, // 11 * 3.636 ≈ 40
    fontWeight: FontWeight.w500,
    height: 1.0.h,
  );

  static TextStyle get medium12 => TextStyle(
    color: AppColors.textColor,
    fontSize: 44.sp, // 12 * 3.636 ≈ 44
    fontWeight: FontWeight.w500,
    height: 1.0.h,
  );

  static TextStyle get medium13 => TextStyle(
    color: AppColors.textColor,
    fontSize: 47.sp, // 13 * 3.636 ≈ 47
    fontWeight: FontWeight.w500,
    height: 1.0.h,
  );

  static TextStyle get medium14 => TextStyle(
    color: AppColors.textColor,
    fontSize: 51.sp, // 14 * 3.636 ≈ 51
    fontWeight: FontWeight.w500,
    height: 1.0.h,
  );

  static TextStyle get medium15 => TextStyle(
    color: AppColors.textColor,
    fontSize: 55.sp, // 15 * 3.636 ≈ 55
    fontWeight: FontWeight.w500,
    height: 1.0.h,
  );

  static TextStyle get medium16 => TextStyle(
    color: AppColors.textColor,
    fontSize: 58.sp, // 16 * 3.636 ≈ 58
    fontWeight: FontWeight.w500,
    height: 1.0.h,
  );

  static TextStyle get medium18 => TextStyle(
    color: AppColors.textColor,
    fontSize: 65.sp, // 18 * 3.636 ≈ 65
    fontWeight: FontWeight.w500,
    height: 1.0.h,
  );

  static TextStyle get medium22 => TextStyle(
    color: AppColors.textColor,
    fontSize: 80.sp, // 22 * 3.636 = 80
    fontWeight: FontWeight.w500,
    height: 1.0.h,
  );

  static TextStyle get medium24 => TextStyle(
    color: AppColors.textColor,
    fontSize: 87.sp, // 24 * 3.636 ≈ 87
    fontWeight: FontWeight.w500,
    height: 1.0.h,
  );

  /// Semi-bold text styles
  static TextStyle get semiBold10 => TextStyle(
    color: AppColors.textColor,
    fontSize: 36.sp, // 10 * 3.636 ≈ 36
    fontWeight: FontWeight.w600,
    height: 1.0.h,
  );

  static TextStyle get semiBold12 => TextStyle(
    color: AppColors.textColor,
    fontSize: 44.sp, // 12 * 3.636 ≈ 44
    fontWeight: FontWeight.w600,
    height: 1.0.h,
  );

  static TextStyle get semiBold14 => TextStyle(
    color: AppColors.textColor,
    fontSize: 51.sp, // 14 * 3.636 ≈ 51
    fontWeight: FontWeight.w600,
    height: 1.0.h,
  );

  static TextStyle get semiBold15 => TextStyle(
    color: AppColors.textColor,
    fontSize: 55.sp, // 15 * 3.636 ≈ 55
    fontWeight: FontWeight.w600,
    height: 1.0.h,
  );

  static TextStyle get semiBold16 => TextStyle(
    color: AppColors.textColor,
    fontSize: 58.sp, // 16 * 3.636 ≈ 58
    fontWeight: FontWeight.w600,
    height: 1.0.h,
  );

  static TextStyle get semiBold18 => TextStyle(
    color: AppColors.textColor,
    fontSize: 65.sp, // 18 * 3.636 ≈ 65
    fontWeight: FontWeight.w600,
    height: 1.0.h,
  );

  static TextStyle get semiBold20 => TextStyle(
    color: AppColors.textColor,
    fontSize: 73.sp, // 20 * 3.636 ≈ 73
    fontWeight: FontWeight.w600,
    height: 1.0.h,
  );

  static TextStyle get semiBold22 => TextStyle(
    color: AppColors.textColor,
    fontSize: 80.sp, // 22 * 3.636 = 80
    fontWeight: FontWeight.w600,
    height: 1.0.h,
  );

  static TextStyle get semiBold24 => TextStyle(
    color: AppColors.textColor,
    fontSize: 87.sp, // 24 * 3.636 ≈ 87
    fontWeight: FontWeight.w600,
    height: 1.0.h,
  );

  static TextStyle get semiBold26 => TextStyle(
    color: AppColors.textColor,
    fontSize: 95.sp, // 26 * 3.636 ≈ 95
    fontWeight: FontWeight.w600,
    height: 1.0.h,
  );

  static TextStyle get semiBold28 => TextStyle(
    color: AppColors.textColor,
    fontSize: 102.sp, // 28 * 3.636 ≈ 102
    fontWeight: FontWeight.w600,
    height: 1.0.h,
  );

  static TextStyle get semiBold32 => TextStyle(
    color: AppColors.textColor,
    fontSize: 116.sp, // 32 * 3.636 ≈ 116
    fontWeight: FontWeight.w600,
    height: 1.0.h,
  );

  static TextStyle get semiBold34 => TextStyle(
    color: AppColors.textColor,
    fontSize: 124.sp, // 34 * 3.636 ≈ 124
    fontWeight: FontWeight.w600,
    height: 1.0.h,
  );

  static TextStyle get semiBold36 => TextStyle(
    color: AppColors.textColor,
    fontSize: 131.sp, // 36 * 3.636 ≈ 131
    fontWeight: FontWeight.w600,
    height: 1.0.h,
  );

  ///* Bold Styles
  static TextStyle get bold10 => TextStyle(
    color: AppColors.textColor,
    fontSize: 36.sp, // 10 * 3.636 ≈ 36
    fontWeight: FontWeight.w700,
    height: 1.0.h,
  );

  static TextStyle get bold12 => TextStyle(
    color: AppColors.textColor,
    fontSize: 44.sp, // 12 * 3.636 ≈ 44
    fontWeight: FontWeight.w700,
    height: 1.0.h,
  );

  static TextStyle get bold14 => TextStyle(
    color: AppColors.textColor,
    fontSize: 51.sp, // 14 * 3.636 ≈ 51
    fontWeight: FontWeight.w700,
    height: 1.0.h,
  );

  static TextStyle get bold15 => TextStyle(
    color: AppColors.textColor,
    fontSize: 55.sp, // 15 * 3.636 ≈ 55
    fontWeight: FontWeight.w700,
    height: 1.0.h,
  );

  static TextStyle get bold16 => TextStyle(
    color: AppColors.textColor,
    fontSize: 58.sp, // 16 * 3.636 ≈ 58
    fontWeight: FontWeight.w700,
    height: 1.0.h,
  );

  static TextStyle get whiteBold16 => TextStyle(
    color: AppColors.white,
    fontSize: 58.sp, // 16 * 3.636 ≈ 58
    fontWeight: FontWeight.w700,
    height: 1.0.h,
  );

  static TextStyle get bold18 => TextStyle(
    color: AppColors.textColor,
    fontSize: 65.sp, // 18 * 3.636 ≈ 65
    fontWeight: FontWeight.w700,
    height: 1.0.h,
  );

  static TextStyle get bold20 => TextStyle(
    color: AppColors.textColor,
    fontSize: 73.sp, // 20 * 3.636 ≈ 73
    fontWeight: FontWeight.w700,
    height: 1.0.h,
  );

  static TextStyle get bold22 => TextStyle(
    color: AppColors.textColor,
    fontSize: 80.sp, // 22 * 3.636 = 80
    fontWeight: FontWeight.w700,
    height: 1.0.h,
  );

  static TextStyle get bold24 => TextStyle(
    color: AppColors.textColor,
    fontSize: 87.sp, // 24 * 3.636 ≈ 87
    fontWeight: FontWeight.w700,
    height: 1.0.h,
  );

  static TextStyle get bold26 => TextStyle(
    color: AppColors.textColor,
    fontSize: 95.sp, // 26 * 3.636 ≈ 95
    fontWeight: FontWeight.w700,
    height: 1.0.h,
  );

  static TextStyle get bold28 => TextStyle(
    color: AppColors.textColor,
    fontSize: 102.sp, // 28 * 3.636 ≈ 102
    fontWeight: FontWeight.w700,
    height: 1.0.h,
  );

  static TextStyle get bold30 => TextStyle(
    color: AppColors.textColor,
    fontSize: 109.sp, // 30 * 3.636 ≈ 109
    fontWeight: FontWeight.w700,
    height: 1.0.h,
  );
}
