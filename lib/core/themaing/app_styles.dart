import 'package:flutter/material.dart';
import 'package:fruithup/core/themaing/app_colors.dart';
import 'package:fruithup/core/themaing/font_weight_helper.dart';

class AppStyle {
  // Black Color Styles
  static TextStyle font18BlackSemiBold = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeightHelper.semibold,
    color: ColorManger.blackColor,
  );
  static TextStyle font23Bold = const TextStyle(
    fontSize: 23,
    fontWeight: FontWeightHelper.bold,
    color: ColorManger.blackColor,
  );

  // Grey Color Styles
  static TextStyle font15SemiBold = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeightHelper.semibold,
  );
 static TextStyle font13Bold = const TextStyle(
    fontSize: 13,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font16Bold = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeightHelper.bold,
  );
    static TextStyle font16SemiBold = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeightHelper.semibold,
  );
  static TextStyle font19Bold = const TextStyle(
    fontSize: 19,
    fontWeight: FontWeightHelper.bold,
  );
}
