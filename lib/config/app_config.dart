import 'package:bloc_architecture/res/app_colors.dart';
import 'package:bloc_architecture/res/app_fonts.dart';
import 'package:bloc_architecture/res/app_styles.dart';
import 'package:bloc_architecture/utils/app_log.dart';
import 'package:flutter/widgets.dart';

import '../constants/endpoint.dart';
import '../res/app_icons.dart';
import '../res/app_strings.dart';
import '../res/default/default_colors.dart';
import '../res/default/default_endpoints.dart';
import '../res/default/default_fonts.dart';
import '../res/default/default_images.dart';
import '../res/default/default_strings.dart';
import '../res/default/default_styles.dart';
import '../variant/beta/beta_strings.dart';
import '../variant/live/live_strings.dart';
import 'build_variant.dart';

GlobalKey appGlobalKey = GlobalKey();

class AppConfig {
  AppConfig._();

  late BuildVariant _variants;

  BuildVariant get variants => _variants;
  late AppStrings _strings;
  late ApiEndPoints _endPoints;
  late AppIcons _icons;
  late AppFonts _fonts;
  late AppColors _colors;
  late AppStyles _styles;
  Size _size= const Size(360, 640);

  AppColors get colors => _colors;

  AppIcons get icons => _icons;

  AppFonts get fonts => _fonts;

  ApiEndPoints get endPoints => _endPoints;

  AppStrings get strings => _strings;

  AppStyles get styles => _styles;

  Size get size {
    printLog(_size);
    return _size;
  }

  static final AppConfig _instance = AppConfig._();

  factory AppConfig() {
    return _instance;
  }

  setConfig(BuildVariant variant) {
    _variants = variant;
    _initDefault();

    switch (variant) {
      case BuildVariant.LIVE:
        _strings = LiveStrings();
        break;

      case BuildVariant.BETA:
        _strings = BetaStrings();
        break;
    }
  }

  setScreenSize(Size size) {
    _size = size;
  }

  _initDefault() {
    _strings = DefaultStrings();
    _endPoints = DefaultEndPoint();
    _icons = DefaultImages();
    _fonts = DefaultFonts();
    _colors = DefaultColors();
    _styles = DefaultStyles();
  }
}
