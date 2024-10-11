import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freegi_app/utils/colors.dart';

class ProductContainerWidget extends StatelessWidget {
  final double? width, height;
  final EdgeInsets? margin, padding;
  final Widget child;

  const ProductContainerWidget({
    super.key,
    required this.child,
    this.width,
    this.height,
    this.margin,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(8).r,
        boxShadow: [
          BoxShadow(
            color: AppColor.black.withOpacity(0.15),
            blurRadius: 10,
          )
        ],
      ),
      child: child,
    );
  }
}
