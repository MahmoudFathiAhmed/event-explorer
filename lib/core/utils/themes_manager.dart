import 'package:event_explorer/core/utils/colors_manager.dart';
import 'package:event_explorer/core/utils/font_manager.dart';
import 'package:event_explorer/core/utils/styles_manager.dart';
import 'package:event_explorer/core/utils/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    //main colors
    primaryColor: ColorsManager.primaryColor,
    fontFamily: FontConstants.interFontFamily,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorsManager.primaryColor,
      primary: ColorsManager.primaryColor,
    ),
    scaffoldBackgroundColor: ColorsManager.black,
    useMaterial3: true,
    //app bar theme
    appBarTheme: AppBarTheme(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: ColorsManager.white,
            statusBarIconBrightness: Brightness.dark),
        color: ColorsManager.black,
        elevation: AppDouble.d0,
        centerTitle: true,
        toolbarTextStyle: getMediumStyle(
            color: ColorsManager.white,
            fontSize: FontSize.s20,
            fontFamily: FontConstants.poppinsFontFamily),
        iconTheme: const IconThemeData(color: ColorsManager.white),
        titleTextStyle: getMediumStyle(
            color: ColorsManager.white,
            fontSize: FontSize.s20,
            fontFamily: FontConstants.poppinsFontFamily)),
    //button theme
    buttonTheme: const ButtonThemeData(
      disabledColor: ColorsManager.white,
      buttonColor: ColorsManager.btn,
      splashColor: ColorsManager.white,
    ),
    iconTheme: const IconThemeData(
      color: ColorsManager.white,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(ColorsManager.btn),
        foregroundColor: WidgetStateProperty.all(ColorsManager.white),
        shape: WidgetStateProperty.all(
          const StadiumBorder(),
        ),
        textStyle: WidgetStateProperty.all(
          getRegularStyle(color: ColorsManager.white, fontSize: FontSize.s14),
        ),
      ),
    ),
  );
}
