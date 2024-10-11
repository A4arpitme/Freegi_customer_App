import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:freegi_app/widgets/custom_app_button.dart';

class CouponsItemWidget extends StatelessWidget {
  const CouponsItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 20, 15, 10),
      decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(9).r,
          boxShadow: [
            BoxShadow(
                color: AppColor.black.withOpacity(0.06),
                blurRadius: 12,
                offset: const Offset(0, 3.5))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Flat 10% off on standard chartered Digismart Credit Card",
            style: TextStyle(
              fontFamily: poppinsFamily,
              fontWeight: FontWeight.w500,
              fontSize: 12.spMin,
              color: AppColor.black,
            ),
          ),
          Text(
            "No minimum order value",
            style: TextStyle(
              fontFamily: poppinsFamily,
              fontWeight: FontWeight.w500,
              fontSize: 12.spMin,
              color: AppColor.color_555555,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10).r,
            decoration: BoxDecoration(
                border: Border(top: BorderSide(color: AppColor.color_F5F5F5))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DottedBorder(
                  color: AppColor.color_0EBBB6,
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(5).r,
                  strokeWidth: 0.8,
                  dashPattern: [4, 4],
                  // strokeCap: StrokeCap.round,
                  child: Container(
                    padding: const EdgeInsets.all(5).r,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5).r,
                      color: AppColor.color_0EBBB6.withOpacity(0.1),
                    ),
                    child: Text(
                      "DIGISMART",
                      style: TextStyle(
                        fontFamily: poppinsFamily,
                        fontWeight: FontWeight.w500,
                        fontSize: 11.spMin,
                        color: AppColor.color_0EBBB6,
                      ),
                    ),
                  ),
                ),
                CustomAppButton(
                  btnHeight: 30.h,
                  btnWidth: 70.h,
                  borderRadius: 5,
                  labelSize: 11.spMin,
                  onPressed: () {},
                  btnLabel: 'Apply',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
