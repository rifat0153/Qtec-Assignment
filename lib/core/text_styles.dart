import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTextStyles {
  static TextStyle whiteStyle({Color color = Colors.white, double fontSize = 12}) => TextStyle(
        fontSize: fontSize,
        color: color,
      );
  static TextStyle extraBoldStyle({Color color = Colors.black, double fontSize = 16}) => TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: FontWeight.w700,
      );

  static TextStyle boldFontStyle({Color color = Colors.black, double fontSize = 16}) => TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: FontWeight.w400,
      );
  static TextStyle buttonTextStyle({Color color = Colors.black, double fontSize = 16}) => TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: FontWeight.w500,
      );

  static TextStyle lineThrough({Color color = Colors.black, double fontSize = 16}) =>
      TextStyle(fontSize: fontSize, color: color, decoration: TextDecoration.lineThrough);
}
