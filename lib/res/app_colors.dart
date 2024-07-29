import 'package:flutter/material.dart';

extension AppColorExt on String {
  Color toColor() {
    assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(this),
        'hex color must be #rrggbb or #rrggbbaa');
    return Color(
      int.parse(substring(1), radix: 16) +
          (length == 7 ? 0xff000000 : 0x00000000),
    );
  }
}

abstract class AppColors {
  Color primaryColor = '#87102c'.toColor();
  Color primaryDarkColor = '#87102c'.toColor();
  Color hintColor = '#CF0534'.toColor();
  Color secondaryColor = '#072b4b'.toColor();
  Color color_303030 = '#303030'.toColor();
  Color cardColor = '#FFFFFF'.toColor();
  Color white = '#FFFFFF'.toColor();
  Color black = '#000000'.toColor();
}
