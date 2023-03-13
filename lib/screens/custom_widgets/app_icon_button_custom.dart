import 'package:flutter/material.dart';
import '../../common/size_config.dart';

class AppIconButtonCustom extends StatelessWidget {
  const AppIconButtonCustom({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.iconSize,
  }) : super(key: key);

  final Widget icon;
  final VoidCallback onPressed;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: icon,
        iconSize: iconSize ?? getProportionateScreenWidth(20),
        constraints: BoxConstraints(
          minWidth: getProportionateScreenWidth(20),
          minHeight: getProportionateScreenWidth(20),
        ),
        splashRadius: getProportionateScreenWidth(22),
        onPressed: onPressed);
  }
}
