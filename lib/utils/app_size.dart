
import '../config/app_config.dart';

extension AppSizeExt on num {
  double get dp {
    if (this == 0 || this == 0.0) return 0;
    return this * _scaleFactor();
  }

  double _scaleFactor() {
    return AppConfig().size.height / _defaultSize();
  }

  double _defaultSize() {
    return AppConfig().size.width > AppConfig().size.height ? 360 : 640;
  }
}
