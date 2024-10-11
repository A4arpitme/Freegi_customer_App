import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';

class ViewAllWidget extends StatelessWidget {
  const ViewAllWidget({
    super.key,
    required this.title,
    required this.viewAllOnTap,
  });

  final String title;
  final VoidCallback viewAllOnTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10).r,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20.spMin,
              fontWeight: FontWeight.w500,
              fontFamily: poppinsFamily,
              // height: 3.0,
              color: AppColor.black,
            ),
          ),
          GestureDetector(
            onTap: viewAllOnTap,
            child: Text(
              'View All',
              style: TextStyle(
                fontFamily: poppinsFamily,
                fontSize: 10.spMin,
                fontWeight: FontWeight.normal,
                color: AppColor.color_333333,
                height: 1.5,
              ),
            ),
          )
        ],
      ),
    );
  }
}
