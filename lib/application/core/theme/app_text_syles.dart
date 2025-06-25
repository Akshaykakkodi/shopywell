import 'package:flutter/material.dart';
import 'package:shopywell/application/core/constants/app_constants.dart';
import 'package:shopywell/application/core/theme/app_colors.dart';
const baseTestStyle = TextStyle(fontFamily: 'Montserrat');
final _scaleWidth = AppConstants.screenSize.width / AppConstants.designWidth;
extension TextStyleX on TextStyle {
  TextStyle get w300 => copyWith(fontWeight: FontWeight.w300);
  TextStyle get w400 => copyWith(fontWeight: FontWeight.w400);
  TextStyle get w500 => copyWith(fontWeight: FontWeight.w500);
  TextStyle get w600 => copyWith(fontWeight: FontWeight.w600);
  TextStyle get w700 => copyWith(fontWeight: FontWeight.w700);
  TextStyle get w800 => copyWith(fontWeight: FontWeight.w800);
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);

  TextStyle get s09 => copyWith(fontSize: 9 * _scaleWidth);
  TextStyle get s10 => copyWith(fontSize: 10 * _scaleWidth);
  TextStyle get s11 => copyWith(fontSize: 11 * _scaleWidth);
  TextStyle get s12 => copyWith(fontSize: 12 * _scaleWidth);
  TextStyle get s14 => copyWith(fontSize: 14 * _scaleWidth);
  TextStyle get s16 => copyWith(fontSize: 16 * _scaleWidth);
  TextStyle get s18 => copyWith(fontSize: 18 * _scaleWidth);
  TextStyle get s20 => copyWith(fontSize: 20 * _scaleWidth);
  TextStyle get s22 => copyWith(fontSize: 22 * _scaleWidth);
  TextStyle get s24 => copyWith(fontSize: 24 * _scaleWidth);
  TextStyle get s26 => copyWith(fontSize: 26 * _scaleWidth);
  TextStyle get s28 => copyWith(fontSize: 28 * _scaleWidth);
  TextStyle get s30 => copyWith(fontSize: 30 * _scaleWidth);
  TextStyle get s31 => copyWith(fontSize: 31 * _scaleWidth);
  TextStyle get s34 => copyWith(fontSize: 34 * _scaleWidth);

  TextStyle get s36 => copyWith(fontSize: 36 * _scaleWidth);
  TextStyle get s40 => copyWith(fontSize: 40 * _scaleWidth);

  TextStyle get red => copyWith(color: AppColors.primaryColor);
  TextStyle get black => copyWith(color: AppColors.black);
  TextStyle get grey1 => copyWith(color: AppColors.textGrey1);
  TextStyle get grey2 => copyWith(color: AppColors.textGrey2);
  TextStyle get secondary => copyWith(color: AppColors.secondaryText);
  TextStyle get white => copyWith(color: Colors.white);

  
}