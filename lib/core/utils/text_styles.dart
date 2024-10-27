import 'package:flutter/material.dart';
import 'package:event_explorer/core/utils/colors_manager.dart';
import 'package:event_explorer/core/utils/font_manager.dart';
import 'package:event_explorer/core/utils/styles_manager.dart';

class TextStyles {
  static TextStyle font14PrimarySemiBold(
      {double size = FontSize.s14, color = ColorsManager.primaryColor}) {
    return getSemiBoldStyle(color: color, fontSize: size);
  }

  static TextStyle font18whiteSemibold(
      {double size = FontSize.s18, color = ColorsManager.white}) {
    return getSemiBoldStyle(color: color, fontSize: size);
  }
  static TextStyle font12whiteRegular(
      {double size = FontSize.s12, color = ColorsManager.white}) {
    return getRegularStyle(color: color, fontSize: size);
  }
  static TextStyle font12GreyRegular(
      {double size = FontSize.s10, color = Colors.grey}) {
    return getRegularStyle(color: color, fontSize: size);
  }
}
