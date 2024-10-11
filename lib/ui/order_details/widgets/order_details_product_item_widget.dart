import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:freegi_app/widgets/old_new_widget.dart';

class OrderDetailsProductItemWidget extends StatelessWidget {
  const OrderDetailsProductItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                        ),
                        5.verticalSpace,
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          50.horizontalSpace,
          OldNewWidget(
            oldPrice: "Rs 450",
            newPrice: "Rs 200",
            usePriceLogo: false,
            useColumn: true,
            newPriceStyle: TextStyle(
              fontFamily: poppinsFamily,
              fontWeight: FontWeight.w600,
              fontSize: 14.spMin,
              color: AppColor.black,
            ),
            oldPriceStyle: TextStyle(
              fontFamily: poppinsFamily,
              fontWeight: FontWeight.w500,
              fontSize: 12.spMin,
              color: AppColor.color_999999,
              decoration: TextDecoration.lineThrough
            ),
          )
        ],
      ),
    );
    ;
  }
}
