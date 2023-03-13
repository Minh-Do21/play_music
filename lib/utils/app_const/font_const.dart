import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../common/size_config.dart';
import 'barrel_const.dart';

class FONT_CONST {
  //  Regular
  static TextStyle regular({
    Color? color,
    double? fontSize,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? height,
    TextDecoration? textDecoration,
  }) {
    return TextStyle(
      // fontFamily: 'Nunito',
      color: color ?? COLOR_CONST.shuttleGray,
      fontSize: fontSize ?? 16,
      fontStyle: fontStyle ?? FontStyle.normal,
      letterSpacing: letterSpacing,
      height: height ?? 1.1,
      decoration: textDecoration ?? TextDecoration.none,
    );
  }

  // Semi Bold
  static TextStyle semoBold({
    Color? color,
    double? fontSize,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? height,
    TextDecoration? textDecoration,
  }) {
    return TextStyle(
      // fontFamily: 'Nunito',
      fontWeight: FontWeight.w600,
      color: color ?? COLOR_CONST.shuttleGray,
      fontSize: getProportionateScreenWidth(fontSize ?? 16),
      fontStyle: fontStyle ?? FontStyle.normal,
      letterSpacing: letterSpacing,
      height: height ?? 1.1,
      decoration: textDecoration ?? TextDecoration.none,
    );
  }

  //  Bold
  static TextStyle bold({
    Color? color,
    double? fontSize,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? height,
    TextDecoration? textDecoration,
    FontWeight? fontWeight,
  }) {
    return TextStyle(
      // fontFamily: 'Nunito',
      fontWeight: fontWeight ?? FontWeight.w700,
      color: color ?? COLOR_CONST.shuttleGray,
      fontSize: getProportionateScreenWidth(fontSize ?? 16),
      fontStyle: fontStyle ?? FontStyle.normal,
      letterSpacing: letterSpacing,
      height: height ?? 1.1,
      decoration: textDecoration ?? TextDecoration.none,
    );
  }

//  Bold
  static TextStyle extraBold({
    Color? color,
    double? fontSize,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? height,
    TextDecoration? textDecoration,
    FontWeight? fontWeight,
  }) {
    return TextStyle(
      // fontFamily: 'NunitoExtraBold',
      fontWeight: fontWeight ?? FontWeight.w700,
      color: color ?? COLOR_CONST.shuttleGray,
      fontSize: getProportionateScreenWidth(fontSize ?? 16),
      fontStyle: fontStyle ?? FontStyle.normal,
      letterSpacing: letterSpacing,
      height: height ?? 1.1,
      decoration: textDecoration ?? TextDecoration.none,
    );
  }
}
