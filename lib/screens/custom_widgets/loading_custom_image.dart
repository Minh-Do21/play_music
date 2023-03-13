import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../../common/barrel_common.dart';
import '../../utils/barrel_utils.dart';

class LoadingCustomImage extends StatelessWidget {
  final int? countItem;
  LoadingCustomImage({Key? key, this.countItem}) : super(key: key);

  final widthLineLoad =
      SizeConfig.screenWidth - getProportionateScreenWidth(68);

  @override
  Widget build(BuildContext context) {
    final widths = [
      widthLineLoad * 0.7,
      widthLineLoad * 0.5,
      widthLineLoad * 0.4
    ];
    return Shimmer.fromColors(
      baseColor: COLOR_CONST.shimmerBaseColor,
      highlightColor: COLOR_CONST.shimmerHighlightColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: countItem ?? 10,
            itemBuilder: (context, index) {
              return Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: getProportionateScreenWidth(12)),
                  child: Row(
                    children: [
                      Container(
                        height: SizeConfig.screenWidth * 0.25,
                        width: SizeConfig.screenWidth * 0.25,
                        decoration: BoxDecoration(
                          color: COLOR_CONST.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const HorizontalSpacing(of: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ...List.generate(3, (index) {
                            return Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: getProportionateScreenWidth(8)),
                              height: getProportionateScreenWidth(16),
                              width: widths[index],
                              decoration: BoxDecoration(
                                color: COLOR_CONST.white,
                                borderRadius: BorderRadius.circular(6),
                              ),
                            );
                          })
                        ],
                      ),
                    ],
                  ));
            }),
      ),
    );
  }
}
