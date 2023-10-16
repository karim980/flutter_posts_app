import 'package:flutter/material.dart';

import 'colors/app_color.dart';

final primaryColor = Color(0xff082659);
final secondaryColor = Color(0xffde890c);

final appTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      centerTitle: true,
    ),
    iconTheme: IconThemeData(color: Colors.grey[700]),
    textTheme: TextTheme(
      headline1: TextStyle(color: AppColors.whiteColor,fontSize: 27,fontWeight: FontWeight.w600),
      headline2: TextStyle(color: AppColors.whiteColor,fontSize: 20,fontWeight: FontWeight.w200),
      bodyText1: TextStyle(color: AppColors.yllColor,fontWeight: FontWeight.w300,fontSize: 12),
      bodyText2: TextStyle(color: AppColors.whiteColor,fontWeight: FontWeight.w300,fontSize: 12),
      subtitle1: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.backColor),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(primaryColor)
    )),
    brightness: Brightness.light,
    primaryColor: primaryColor,
    colorScheme: ColorScheme.light(
      primary: primaryColor,
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(color: primaryColor),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      foregroundColor: secondaryColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primaryColor),
        iconColor: secondaryColor,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: secondaryColor),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
          borderRadius: BorderRadius.circular(8),
        )));
