import 'package:flutter/material.dart';

import '../../app/config.dart';
// import 'package:ozlo_agent/app/config.dart';

class AppColors {
  static const Color primary = Color(0xff1DC358);
  static const Color accent = Color(0x0D000000);
  static const Color canvas = Color(0xffFFFFFF);
  static const Color secondary = Color(0xffFFDB5B);
  static const Color textPrimary = Color(0xff393939);
  static const Color textSecondary = Color(0xff828282);
  static const Color hintColor = Color(0xffB4B6B8);
  static const Color appbarContainer = Color(0xfff3f3f3);
  static const Color enterBtnColor = Color(0xff348331);
  static const Color submitBtnColor = Color(0xff222222);
  static const Color whiteColor = Colors.white;
  static const Color blackColor = Colors.black;
  static const Color greyColor = Colors.grey;
}

ThemeData get appTheme {
  return ThemeData(
    //drawerTheme: DrawerThemeData(backgroundColor: Colors.black,scrimColor: Colors.black),
    primaryColor: AppColors.primary,
    hintColor: Colors.white,
    dividerColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    canvasColor: AppColors.canvas,
    fontFamily: Config.isEnglish ? "Mulish" : "Mada",
  );
}
