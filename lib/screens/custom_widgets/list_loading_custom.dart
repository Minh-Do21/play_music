import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../../common/barrel_common.dart';
import '../../utils/barrel_utils.dart';

class ListLoadingCustom extends StatelessWidget {
  ListLoadingCustom({Key? key}) : super(key: key);

  final widthLineLoad =
      SizeConfig.screenWidth - getProportionateScreenWidth(68);

  @override
  Widget build(BuildContext context) {
    final widths = [
      widthLineLoad * 0.8,
      widthLineLoad * 0.9,
      widthLineLoad * 0.6
    ];
    return Shimmer.fromColors(
      baseColor: COLOR_CONST.shimmerBaseColor,
      highlightColor: COLOR_CONST.shimmerHighlightColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(
                    vertical: getProportionateScreenWidth(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ...List.generate(3, (index) {
                      return Container(
                        margin: EdgeInsets.symmetric(
                            vertical: getProportionateScreenWidth(8)),
                        height: getProportionateScreenWidth(12),
                        width: widths[index],
                        decoration: BoxDecoration(
                          color: COLOR_CONST.white,
                          borderRadius: BorderRadius.circular(
                              getProportionateScreenWidth(4)),
                        ),
                      );
                    })
                  ],
                ),
              );
            }),
      ),
    );
  }
}
