import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/utils/colors.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({
    super.key,
    this.width,
    this.height,
    this.imageWidth,
    this.imageHeight,
    this.padding,
  });

  final double? width, height, imageWidth, imageHeight;

  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.bottomCenter,
      padding: padding,
      // margin: const EdgeInsets.all(10).r,
      decoration: BoxDecoration(
        color: AppColor.color_E0E0E0,
        border: Border.all(
          color: AppColor.color_0EBBB6,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(8).r,
      ),
      child: Image.asset(
        Assets.imagesDemoProduct,
        width: imageWidth,
        height: imageHeight,
      ),
    );
  }
}
