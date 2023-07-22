// the code below is used to manage the theme of the app
import 'package:e_commerce_app/presentation/color_manager.dart';
import 'package:e_commerce_app/presentation/font_manager.dart';
import 'package:e_commerce_app/presentation/styles_manager.dart';
import 'package:e_commerce_app/presentation/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme(){
  return ThemeData(
    // setting app colors
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryOpacity70,
    primaryColorDark: ColorManager.darkPrimary,
    // ripple effect color
    splashColor: ColorManager.primaryOpacity70,
    disabledColor: ColorManager.grey1,  // this will be used in case of disabled state
    // setting the accent color below
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: ColorManager.grey),
    // adding CardTheme for the app
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
    ),
    // adding theme for the appbar
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.primaryOpacity70,
      titleTextStyle: getRegularFontStyle(color: ColorManager.white,fontSize: FontSize.s16),
    ),
    //adding button theme for the app
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.primaryOpacity70,
    ),
    // setting the theme for elevated button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularFontStyle(color: ColorManager.white),
        backgroundColor: ColorManager.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSize.s12)),
      ),
    ),
    // adding text theme for the app
    textTheme: TextTheme(
      displayLarge: getSemiBoldFontStyle(color: ColorManager.darkGrey,fontSize: FontSize.s16),
      titleMedium: getMediumFontStyle(color: ColorManager.lightGrey,fontSize: FontSize.s14),
      bodySmall: getRegularFontStyle(color: ColorManager.grey),
      bodyLarge: getRegularFontStyle(color: ColorManager.grey),
    ),
  );
}