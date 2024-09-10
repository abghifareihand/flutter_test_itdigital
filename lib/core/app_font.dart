import 'package:flutter/material.dart';

import 'app_color.dart';

class AppFont {
  static TextStyle pinkText = const TextStyle(
    fontFamily: 'Poppins',
    color: AppColor.todoPink,
  );
  static TextStyle whiteText = const TextStyle(
    fontFamily: 'Poppins',
    color: AppColor.todoWhite,
  );
  static TextStyle blackText = const TextStyle(
    fontFamily: 'Poppins',
    color: AppColor.todoBlack,
  );
  static TextStyle greyText = const TextStyle(
    fontFamily: 'Poppins',
    color: AppColor.todoGrey,
  );
}

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
