import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../common/barrel_common.dart';
import '../../../utils/barrel_utils.dart';

class ImageVideoCustom extends StatelessWidget {
  const ImageVideoCustom({
    required this.imagePath,
    this.backgroudColor,
    this.sizeAvatar = 90,
    this.sizeRadius = 90,
    Key? key,
  }) : super(key: key);

  final Uri? imagePath;
  final Color? backgroudColor;
  final double sizeAvatar;
  final double sizeRadius;
  // ignore: avoid_field_initializers_in_const_classes

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroudColor ?? COLOR_CONST.white.withOpacity(0.9),  
        borderRadius: BorderRadius.circular(sizeRadius),
       
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(sizeRadius),
        child: imagePath != null 
        ? Image.network(
          imagePath.toString(),
          fit: BoxFit.fill,
          width: getProportionateScreenWidth(sizeAvatar),
        ): Container(
          width: getProportionateScreenWidth(sizeAvatar),
          height: getProportionateScreenWidth(sizeAvatar),
          color: COLOR_CONST.shimmerBaseColor,
        
        ),
      )
    );
  }
}