import 'package:flutter/material.dart';
import 'package:shopywell/application/core/theme/app_colors.dart';

extension BuildContextX on BuildContext {
  Size get getSize => MediaQuery.sizeOf(this);
  TextStyle get textStyle {
    return Theme.of(
      this,
    ).textTheme.bodyMedium!.copyWith(color: AppColors.black);
  }
}
