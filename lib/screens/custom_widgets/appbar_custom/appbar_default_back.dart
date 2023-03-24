import 'package:flutter/material.dart';
import '../../../common/size_config.dart';
import '../../../utils/app_const/barrel_const.dart';
import '../app_icon_button_custom.dart';

// MARK: Appbar default Back button
class AppBarDefaultBack extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final Widget? iconBack;
  final bool? isCallBack;
  final Function()? callback;
  final Color? backgroundColor;
  final TextStyle? titleStyle;

  const AppBarDefaultBack({
    Key? key,
    required this.title,
    this.isCallBack = false,
    this.iconBack,
    this.callback,
    this.actions,
    this.backgroundColor,
    this.titleStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: titleStyle ?? FONT_CONST.bold(color: COLOR_CONST.white, fontSize: 18),
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: backgroundColor ?? COLOR_CONST.allports,
      brightness: Brightness.dark,
      automaticallyImplyLeading: false,
      leading: isCallBack! ?
       AppIconButtonCustom(
        icon: 
        iconBack ?? SvgPicture.asset(
          ICON_CONST.ic_back.path,
          color: COLOR_CONST.black,
        ),
        onPressed: callback ?? () {
            Navigator.of(context).pop();  
        },
      ) : Container(),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(getProportionateScreenWidth(50));
}
