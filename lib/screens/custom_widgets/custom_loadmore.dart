import 'package:flutter/cupertino.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../common/size_config.dart';

class CustomLoadMore extends StatelessWidget {
  const CustomLoadMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomFooter(
      builder: (context, mode) => Center(
        child: Container(
          padding: EdgeInsets.only(
              top: getProportionateScreenWidth(20), bottom: SizeConfig.paddingBottom),
          child: const CupertinoActivityIndicator(),
        ),
      ),
    );
  }
}
