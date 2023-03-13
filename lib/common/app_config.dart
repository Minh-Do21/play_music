import 'package:flutter/cupertino.dart';
import '../utils/app_const/color_const.dart';

class AppConfig {
  static final AppConfig _appConfig = AppConfig._internal();
  static AppConfig get instance => _appConfig;
  factory AppConfig() {
    return _appConfig;
  }

  AppConfig._internal();

  Color primaryColor = COLOR_CONST.lochmara;
  String? XRapidAPIKey;
  String? XRapidAPIHost;
}
