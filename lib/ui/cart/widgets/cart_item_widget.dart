import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(bottom: 15).r,
      padding: const EdgeInsets.symmetric(horizontal: 15).r,
      height: 56.h,
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Image.asset(Assets.imagesDemoAmul),
                10.horizontalSpace,
                Expanded(
                  child: Container(
                    color: AppColor.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            maxLines: 2,
                            'Amul Gold Milk',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: ptSansFamily,
                              fontSize: 13.spMin,
                              color: AppColor.black,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        Text(
                          '1 ltr',
                          style: TextStyle(
                              fontSize: 11.spMin,
                              fontFamily: ptSansFamily,
                              fontWeight: FontWeight.bold,
                              color: AppColor.color_999999),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          30.horizontalSpace,
          Container(
            padding: EdgeInsets.symmetric(vertical: 3,horizontal: 2).r,
            decoration: BoxDecoration(
              border: Border.all(color: AppColor.black, width: 1.5),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4),
                topRight: Radius.circular(4),
                bottomLeft: Radius.circular(4),
              ).r,
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.remove,
                  size: 15,
                ),
                10.horizontalSpace,
                const Text(
                  "2",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      fontFamily: ptSansFamily,
                      color: AppColor.black),
                ),
                10.horizontalSpace,
                const Icon(
                  Icons.add,
                  size: 15,
                ),
              ],
            ),
          ),
          20.horizontalSpace,
          Text(
            "Rs 160",
            style: TextStyle(
              fontFamily: ptSansFamily,
              fontWeight: FontWeight.bold,
              fontSize: 14.spMin,
            ),
          )
        ],
      ),
    );
  }
}
