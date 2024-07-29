import 'package:bloc_architecture/config/app_config.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  TextStyle textStyleRegular12({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
        fontSize: 12,
        color: color ?? AppConfig().colors.color_303030,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontFamily: AppConfig().fonts.montserrat);
  }

  TextStyle textStyleSemiBold12({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
        fontSize: 12,
        color: color ?? AppConfig().colors.color_303030,
        fontWeight: fontWeight ?? FontWeight.w600,
        fontFamily: AppConfig().fonts.montserrat);
  }

  TextStyle textStyleBold12({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
        fontSize: 12,
        color: color ?? AppConfig().colors.color_303030,
        fontWeight: fontWeight ?? FontWeight.bold,
        fontFamily: AppConfig().fonts.montserrat);
  }
  TextStyle textStyleRegular14({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
        fontSize: 14,
        color: color ?? AppConfig().colors.color_303030,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontFamily: AppConfig().fonts.montserrat);
  }

  TextStyle textStyleSemiBold14({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
        fontSize: 14,
        color: color ?? AppConfig().colors.color_303030,
        fontWeight: fontWeight ?? FontWeight.w600,
        fontFamily: AppConfig().fonts.montserrat);
  }

  TextStyle textStyleBold14({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
        fontSize: 14,
        color: color ?? AppConfig().colors.color_303030,
        fontWeight: fontWeight ?? FontWeight.bold,
        fontFamily: AppConfig().fonts.montserrat);
  }

  TextStyle textStyleRegular16({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
        fontSize: 16,
        color: color ?? AppConfig().colors.color_303030,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontFamily: AppConfig().fonts.montserrat);
  }

  TextStyle textStyleSemiBold16({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
        fontSize: 16,
        color: color ?? AppConfig().colors.color_303030,
        fontWeight: fontWeight ?? FontWeight.w600,
        fontFamily: AppConfig().fonts.montserrat);
  }

  TextStyle textStyleBold16({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
        fontSize: 16,
        color: color ?? AppConfig().colors.color_303030,
        fontWeight: fontWeight ?? FontWeight.bold,
        fontFamily: AppConfig().fonts.montserrat);
  }
  
  TextStyle textStyleRegular18({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
        fontSize: 18,
        color: color ?? AppConfig().colors.color_303030,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontFamily: AppConfig().fonts.montserrat);
  }

  TextStyle textStyleSemiBold18({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
        fontSize: 18,
        color: color ?? AppConfig().colors.color_303030,
        fontWeight: fontWeight ?? FontWeight.w600,
        fontFamily: AppConfig().fonts.montserrat);
  }

  TextStyle textStyleBold18({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
        fontSize: 18,
        color: color ?? AppConfig().colors.color_303030,
        fontWeight: fontWeight ?? FontWeight.bold,
        fontFamily: AppConfig().fonts.montserrat);
  }
  
  TextStyle textStyleRegular20({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
        fontSize: 20,
        color: color ?? AppConfig().colors.color_303030,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontFamily: AppConfig().fonts.montserrat);
  }

  TextStyle textStyleSemiBold20({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
        fontSize: 20,
        color: color ?? AppConfig().colors.color_303030,
        fontWeight: fontWeight ?? FontWeight.w600,
        fontFamily: AppConfig().fonts.montserrat);
  }

  TextStyle textStyleBold20({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
        fontSize: 20,
        color: color ?? AppConfig().colors.color_303030,
        fontWeight: fontWeight ?? FontWeight.bold,
        fontFamily: AppConfig().fonts.montserrat);
  }
}
