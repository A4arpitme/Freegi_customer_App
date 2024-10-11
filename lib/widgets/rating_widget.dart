import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key, required this.rating});

  final String rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2).r,
      decoration: BoxDecoration(
        color: AppColor.color_FBB13C,
        borderRadius: BorderRadius.circular(10).r,
      ),
      child: Row(
        children: [
          Text(
            rating,
            style: TextStyle(
              fontFamily: poppinsFamily,
              fontSize: 10.spMin,
              color: AppColor.white,
              height: 1.2,
              fontWeight: FontWeight.normal,
            ),
          ),
          2.horizontalSpace,
          const Icon(
            Icons.star,
            size: 10,
            color: AppColor.white,
          )
        ],
      ),
    );
  }
}
