import 'package:flutter/material.dart';
import '../../common/app_config.dart';
import '../../common/size_config.dart';
import '../../utils/app_const/barrel_const.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.title,
    this.width,
    this.height,
    this.onPressed,
    this.borderRadius,
    this.fontSize,
    this.backgroundColor,
    this.boxDecoration,
    this.textStyle,
  }) : super(key: key);

  final String title;
  final double? width;
  final double? height;
  final VoidCallback? onPressed;
  final BorderRadius? borderRadius;
  final double? fontSize;
  final Color? backgroundColor;
  final BoxDecoration? boxDecoration;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height ?? getProportionateScreenWidth(50),
      decoration: boxDecoration ??
          BoxDecoration(
            color: onPressed != null
                ? backgroundColor ?? AppConfig.instance.primaryColor
                : COLOR_CONST.shuttleGray,
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 1),
                blurRadius: 1,
                color: Colors.black.withOpacity(0.1),
              )
            ],
            borderRadius: borderRadius ?? appDefaultRadius,
          ),
      child: MaterialButton(
        onPressed: onPressed,
        elevation: 0,
        padding: EdgeInsets.zero,
        splashColor: AppConfig.instance.primaryColor,
        highlightColor: Colors.transparent,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? appDefaultRadius,
        ),
        child: Text(title,
            style: textStyle ??
                FONT_CONST.semoBold(
                  color: COLOR_CONST.white,
                  fontSize: fontSize ?? 18,
                ),
            textAlign: TextAlign.center),
      ),
    );
  }
}

class PrimaryButtonNegative extends StatelessWidget {
  const PrimaryButtonNegative({
    Key? key,
    required this.title,
    this.width,
    this.height,
    this.onPressed,
    this.borderRadius,
    this.fontSize,
    this.backgroundColor,
    this.boxDecoration,
    this.textStyle,
  }) : super(key: key);

  final String? title;
  final double? width;
  final double? height;
  final VoidCallback? onPressed;
  final BorderRadius? borderRadius;
  final double? fontSize;
  final Color? backgroundColor;
  final BoxDecoration? boxDecoration;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height ?? getProportionateScreenWidth(50),
      decoration: boxDecoration ??
          BoxDecoration(
              color: backgroundColor ?? COLOR_CONST.white,
              borderRadius:
                  borderRadius ?? const BorderRadius.all(Radius.circular(10)),
              border: Border.all(width: 2, color: COLOR_CONST.tropaz)),
      child: MaterialButton(
        onPressed: onPressed,
        elevation: 0,
        padding: EdgeInsets.zero,
        splashColor: COLOR_CONST.tropaz.withOpacity(0.4),
        highlightColor: Colors.transparent,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? appDefaultRadius,
        ),
        child: Text(title ?? '',
            style: textStyle ??
                FONT_CONST.semoBold(
                  color: COLOR_CONST.tropaz,
                  fontSize: fontSize ?? 18,
                ),
            textAlign: TextAlign.center),
      ),
    );
  }
}

class PrimaryButtonCancel extends StatelessWidget {
  const PrimaryButtonCancel({
    Key? key,
    required this.title,
    this.width,
    this.height,
    this.onPressed,
    this.borderRadius,
    this.fontSize,
    this.backgroundColor,
  }) : super(key: key);

  final String? title;
  final double? width;
  final double? height;
  final VoidCallback? onPressed;
  final BorderRadius? borderRadius;
  final double? fontSize;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height ?? getProportionateScreenWidth(50),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: COLOR_CONST.tropaz),
        borderRadius: borderRadius ?? appDefaultRadius,
      ),
      child: MaterialButton(
        onPressed: onPressed,
        elevation: 0,
        padding: EdgeInsets.zero,
        splashColor: COLOR_CONST.tropaz.withOpacity(0.4),
        highlightColor: Colors.transparent,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? appDefaultRadius,
        ),
        child: Text(title ?? '',
            style: FONT_CONST.semoBold(
              color: COLOR_CONST.tropaz,
              fontSize: fontSize ?? 18,
            ),
            textAlign: TextAlign.center),
      ),
    );
  }
}

class PrimaryBorderButton extends StatelessWidget {
  const PrimaryBorderButton({
    Key? key,
    required this.title,
    this.width,
    this.height,
    this.onPressed,
    this.borderRadius,
    this.colorRadius,
    this.fontSize,
    this.backgroundColor,
    this.boxDecoration,
    this.textStyle,
  }) : super(key: key);

  final String? title;
  final double? width;
  final double? height;
  final VoidCallback? onPressed;
  final BorderRadius? borderRadius;
  final double? fontSize;
  final Color? backgroundColor;
  final Color? colorRadius;
  final BoxDecoration? boxDecoration;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height ?? getProportionateScreenWidth(50),
      decoration: boxDecoration ??
          BoxDecoration(
              color: backgroundColor ?? COLOR_CONST.white,
              borderRadius:
                  borderRadius ?? const BorderRadius.all(Radius.circular(20)),
              border: Border.all(
                  width: 1, color: colorRadius ?? COLOR_CONST.tropaz)),
      child: MaterialButton(
        onPressed: onPressed,
        elevation: 0,
        padding: EdgeInsets.zero,
        splashColor: COLOR_CONST.tropaz.withOpacity(0.4),
        highlightColor: Colors.transparent,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(
          borderRadius:
              borderRadius ?? const BorderRadius.all(Radius.circular(20)),
        ),
        child: Text(title ?? '',
            style: textStyle ??
                FONT_CONST.regular(
                  color: COLOR_CONST.tropaz,
                  fontSize: fontSize ?? 11,
                ),
            textAlign: TextAlign.center),
      ),
    );
  }
}
