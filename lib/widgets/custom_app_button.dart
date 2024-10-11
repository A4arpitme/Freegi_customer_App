import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';

class CustomAppButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String btnLabel, fontFamily;
  final EdgeInsets? padding, btnPadding;
  final Color? btnColor, labelColor, btnBorderColor;
  final double? labelSize, borderRadius, btnHeight, btnWidth, btnElevation;

  const CustomAppButton({
    super.key,
    this.onPressed,
    required this.btnLabel,
    this.padding,
    this.btnColor,
    this.labelColor,
    this.labelSize,
    this.borderRadius,
    this.fontFamily = poppinsFamily,
    this.btnPadding = EdgeInsets.zero,
    this.btnHeight,
    this.btnWidth,
    this.btnBorderColor, this.btnElevation,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      height: btnHeight ?? 45.h,
      width: btnWidth ?? double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: btnElevation ?? 2,
          backgroundColor: btnColor ?? AppColor.color_FBB13C,
          padding: btnPadding,
          // padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            side: btnBorderColor != null
                ? BorderSide(color: btnBorderColor!)
                : BorderSide.none,
            borderRadius: BorderRadius.circular(borderRadius ?? 50),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          btnLabel,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: labelColor ?? AppColor.white,
            // height: 3.0,
            fontFamily: fontFamily,
            fontSize: labelSize ?? 20.spMin,
          ),
        ),
      ),
    );
  }
}
