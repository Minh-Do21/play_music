import 'package:flutter/material.dart';
import '../../../utils/app_const/color_const.dart';
import '../../../utils/app_const/icon_const.dart';

enum ToastMessageType {
  SUCCESS,
  INFO,
  WARNING,
  ERROR,
}

extension ToastMessageTypeExtension on ToastMessageType {
  Color get backgroundColor {
    switch (this) {
      case ToastMessageType.SUCCESS:
        return COLOR_CONST.jade;
      case ToastMessageType.INFO:
        return COLOR_CONST.jade;
      case ToastMessageType.WARNING:
        return COLOR_CONST.pomegranate;
      case ToastMessageType.ERROR:
        return COLOR_CONST.white;
    }
  }

  String get icon {
    switch (this) {
      case ToastMessageType.SUCCESS:
        return ICON_CONST.ic_success.path;
      case ToastMessageType.INFO:
        return ICON_CONST.ic_success.path;
      case ToastMessageType.WARNING:
        return ICON_CONST.ic_error.path;
      case ToastMessageType.ERROR:
        return ICON_CONST.ic_error.path;
    }
  }
}
