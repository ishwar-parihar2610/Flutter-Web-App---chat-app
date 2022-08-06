import 'package:flutter/material.dart';
import 'package:flutter_chat_app/util/app_color.dart';
import 'package:flutter_chat_app/util/app_font.dart';

class AppTheme {
  ThemeData darkTheme = ThemeData(
      fontFamily: AppFont.latoRegulor,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColor.appBarColor,
      ),
      // backgroundColor: AppColor.lightBlack,
      scaffoldBackgroundColor: AppColor.lightBlack);
}
