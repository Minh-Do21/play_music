import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../common/size_config.dart';
import '../../../utils/barrel_utils.dart';

class LoadingShowAble {
  static final LoadingShowAble _instance = LoadingShowAble.internal();

  factory LoadingShowAble() => _instance;

  LoadingShowAble.internal();

  static int referenceCount = 0;

  static void showLoading({bool clickClose = true}) {
    if (referenceCount == 0) {
      BotToast.showCustomLoading(
        clickClose: clickClose,
        allowClick: false,
        backButtonBehavior: BackButtonBehavior.none,
        ignoreContentClick: true,
        animationDuration: const Duration(milliseconds: 200),
        animationReverseDuration: const Duration(milliseconds: 200),
        align: Alignment.center,
        toastBuilder: (cancelFunc) {
          return CupertinoActivityIndicator(
            color: COLOR_CONST.white,
            radius: getProportionateScreenWidth(17),
          );
        },
      );
    }
    referenceCount += 1;
  }

  static void hideLoading() {
    referenceCount -= 1;
    if (referenceCount == 0) {
      BotToast.closeAllLoading();
    }
  }

  static void forceHide() {
    referenceCount = 0;
    BotToast.closeAllLoading();
  }
}
