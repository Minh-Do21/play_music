import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../common/size_config.dart';
import '../../../utils/app_const/barrel_const.dart';

class LoadingSearch extends StatelessWidget {
  const LoadingSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Shimmer.fromColors(
          baseColor: COLOR_CONST.shimmerBaseColor,
          highlightColor: COLOR_CONST.shimmerHighlightColor,
          child: Container(
            height: 14,
            width: SizeConfig.screenWidth / 4,
            decoration: BoxDecoration(
              color: COLOR_CONST.white,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        const ItemLoading(),
        SizedBox(
          height: getProportionateScreenWidth(30),
        ),
        Shimmer.fromColors(
          baseColor: COLOR_CONST.shimmerBaseColor,
          highlightColor: COLOR_CONST.shimmerHighlightColor,
          child: Container(
            height: 14,
            width: SizeConfig.screenWidth / 4,
            decoration: BoxDecoration(
              color: COLOR_CONST.white,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        SizedBox(
          height: getProportionateScreenWidth(10),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                 margin: EdgeInsets.only(top: getProportionateScreenWidth(10)),
                child: const ItemLoading()
              );
            },
          ),
        )
      ],
    );
  }
}

class ItemLoading extends StatelessWidget {
  const ItemLoading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Shimmer.fromColors(
            baseColor: COLOR_CONST.shimmerBaseColor,
            highlightColor: COLOR_CONST.shimmerHighlightColor,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: getProportionateScreenWidth(60),
                height: getProportionateScreenWidth(60),
                color: COLOR_CONST.white,
              ),
            )),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Shimmer.fromColors(
              baseColor: COLOR_CONST.shimmerBaseColor,
              highlightColor: COLOR_CONST.shimmerHighlightColor,
              child: Container(
                height: 14,
                width: SizeConfig.screenWidth -
                    (getProportionateScreenWidth(60) +
                        10 +
                        (appDefaultPadding * 2)),
                decoration: BoxDecoration(
                  color: COLOR_CONST.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Shimmer.fromColors(
              baseColor: COLOR_CONST.shimmerBaseColor,
              highlightColor: COLOR_CONST.shimmerHighlightColor,
              child: Container(
                height: 14,
                width: SizeConfig.screenWidth -
                    (getProportionateScreenWidth(60) +
                        10 +
                        (appDefaultPadding * 2)),
                decoration: BoxDecoration(
                  color: COLOR_CONST.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
