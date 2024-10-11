import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';

class ProductCategoryItemWidget extends StatelessWidget {
  const ProductCategoryItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          width: 90,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: AppColor.color_E7FFD2),
          child: Image.asset(
            Assets.imagesDemoPopularCategory2,
          ),
        ),
        RichText(
          maxLines: 2,
          textAlign: TextAlign.center,
          text: TextSpan(
            text: "Fruits & Vegetables",
            style: TextStyle(
              fontFamily: poppinsFamily,
              fontSize: 14.spMin,
              height: 1.21,
              fontWeight: FontWeight.normal,
              color: AppColor.black,
            ),
          ),
        )
      ],
    );
  }
}
