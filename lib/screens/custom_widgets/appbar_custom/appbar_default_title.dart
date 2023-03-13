import 'package:flutter/material.dart';

import '../../../common/app_config.dart';
import '../../../common/barrel_common.dart';
import '../../../utils/app_const/barrel_const.dart';
import '../app_icon_button_custom.dart';

// MARK: Appbar default Back button
class AppBarDefaultTitle extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final bool isShowBackButton;
  final bool centerTitle;
  final TextStyle? textStyle;
  final Color backgroundColor;
  final VoidCallback? onBackPress;
  final double elevation;

  const AppBarDefaultTitle({
    Key? key,
    required this.title,
    this.backgroundColor = COLOR_CONST.white,
    this.textStyle,
    this.actions,
    this.centerTitle = true,
    this.isShowBackButton = true,
    this.onBackPress,
    this.elevation = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: COLOR_CONST.allports,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (isShowBackButton)
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: AppIconButtonCustom(
                          icon: SvgPicture.asset(
                            ICON_CONST.ic_back.path,
                            color: COLOR_CONST.black,
                            width: 19,
                          ),
                          onPressed:
                              onBackPress ?? () => Navigator.of(context).pop(),
                        ),
                      ),
                    Expanded(
                      child: Center(
                        child: Text(
                          title,
                          style: FONT_CONST.extraBold(
                              color: COLOR_CONST.black, fontSize: 20),
                        ),
                      ),
                    )
                    // if (actions != null) actions,
                  ],
                ),
              ),
            ),
            const Divider(
              thickness: 0.1,
              height: 0.1,
              color: COLOR_CONST.black,
            )
          ],
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
