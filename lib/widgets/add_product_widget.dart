import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';

class AddProductWidget extends StatelessWidget {
  const AddProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 2,
      ).r,
      decoration: BoxDecoration(
        color: AppColor.color_FBB13C,
        borderRadius: BorderRadius.circular(10).r,
      ),
      child: Text(
        "Add",
        style: TextStyle(
          fontFamily: poppinsFamily,
          fontWeight: FontWeight.normal,
          height: 1.5,
          fontSize: 10.spMin,
          color: AppColor.white,
        ),
      ),
    );
  }
}
