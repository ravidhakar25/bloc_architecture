import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_config.dart';

var appTheme = ThemeData(
// Define the default brightness and colors.
  useMaterial3: true,
  brightness: Brightness.light,
  cardColor: AppConfig().colors.cardColor,
  primaryColorDark: AppConfig().colors.primaryDarkColor,
  primaryColorLight: AppConfig().colors.primaryColor,
  primaryColor: AppConfig().colors.primaryColor,
  hintColor: AppConfig().colors.hintColor,
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppConfig().colors.primaryDarkColor,
    primary: AppConfig().colors.primaryColor,
    secondary: AppConfig().colors.secondaryColor,
  ),
  appBarTheme: AppBarTheme(
    color: AppConfig().colors.white,
  ),
// Define the default font family.
  fontFamily: AppConfig().fonts.montserrat,

// Define the default TextTheme.
  textTheme: TextTheme(
      bodyLarge: AppConfig().styles.textStyleRegular16(),
      bodyMedium: AppConfig().styles.textStyleRegular14(),
      bodySmall: AppConfig().styles.textStyleRegular12(),
      displayLarge: AppConfig().styles.textStyleSemiBold18(),
      displayMedium: AppConfig().styles.textStyleSemiBold16(),
      displaySmall: AppConfig().styles.textStyleSemiBold14(),
      headlineLarge: AppConfig().styles.textStyleBold20(),
      headlineMedium: AppConfig().styles.textStyleSemiBold18(),
      headlineSmall: AppConfig().styles.textStyleSemiBold16(),
      labelLarge: AppConfig().styles.textStyleBold18(),
      labelMedium: AppConfig().styles.textStyleSemiBold16(),
      labelSmall: AppConfig().styles.textStyleRegular14(),
      titleLarge: AppConfig().styles.textStyleBold16(),
      titleMedium: AppConfig().styles.textStyleBold14(),
      titleSmall: AppConfig().styles.textStyleBold12()),
);

var appDarkTheme = ThemeData(
// Define the default brightness and colors.
  useMaterial3: true,
  brightness: Brightness.dark,
  cardColor: AppConfig().colors.cardColor,
  primaryColorDark: AppConfig().colors.primaryDarkColor,
  primaryColorLight: AppConfig().colors.primaryColor,
  primaryColor: AppConfig().colors.primaryColor,
  hintColor: AppConfig().colors.hintColor,
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppConfig().colors.primaryDarkColor,
    primary: AppConfig().colors.primaryColor,
    secondary: AppConfig().colors.secondaryColor,
  ),
  appBarTheme: AppBarTheme(
    color: AppConfig().colors.white,
  ),
// Define the default font family.
  fontFamily: AppConfig().fonts.montserrat,

// Define the default TextTheme.
  textTheme: TextTheme(
      bodyLarge: AppConfig()
          .styles
          .textStyleRegular16(color: AppConfig().colors.white),
      bodyMedium: AppConfig()
          .styles
          .textStyleRegular14(color: AppConfig().colors.white),
      bodySmall: AppConfig()
          .styles
          .textStyleRegular12(color: AppConfig().colors.white),
      displayLarge: AppConfig()
          .styles
          .textStyleSemiBold18(color: AppConfig().colors.white),
      displayMedium: AppConfig()
          .styles
          .textStyleSemiBold16(color: AppConfig().colors.white),
      displaySmall: AppConfig()
          .styles
          .textStyleSemiBold14(color: AppConfig().colors.white),
      headlineLarge:
          AppConfig().styles.textStyleBold20(color: AppConfig().colors.white),
      headlineMedium: AppConfig()
          .styles
          .textStyleSemiBold18(color: AppConfig().colors.white),
      headlineSmall: AppConfig()
          .styles
          .textStyleSemiBold16(color: AppConfig().colors.white),
      labelLarge:
          AppConfig().styles.textStyleBold18(color: AppConfig().colors.white),
      labelMedium: AppConfig()
          .styles
          .textStyleSemiBold16(color: AppConfig().colors.white),
      labelSmall: AppConfig()
          .styles
          .textStyleRegular14(color: AppConfig().colors.white),
      titleLarge:
          AppConfig().styles.textStyleBold16(color: AppConfig().colors.white),
      titleMedium:
          AppConfig().styles.textStyleBold14(color: AppConfig().colors.white),
      titleSmall:
          AppConfig().styles.textStyleBold12(color: AppConfig().colors.white)),
);

changeStatusBarColor() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: AppConfig().colors.white, // Set the status bar color
    statusBarIconBrightness: Brightness.dark, // Adjust icon brightness
    statusBarBrightness:
        Brightness.light, // Adjust status bar brightness for dark mode
  ));
}
