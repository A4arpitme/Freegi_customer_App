import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';

class DiscountTextWidget extends StatelessWidget {
  const DiscountTextWidget({super.key, required this.discountValue});

  final String discountValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 4,
        vertical: 2,
      ).r,
      decoration: BoxDecoration(
        color: AppColor.color_0EBBB6,
        borderRadius: BorderRadius.circular(8).r,
      ),
      child: Text(
        "-$discountValue %",
        style: TextStyle(
          fontSize: 10.spMin,
          fontWeight: FontWeight.w600,
          fontFamily: poppinsFamily,
          color: AppColor.white,
          height: 1.2,
        ),
      ),
    );
  }
}
