import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/routes/app_routes.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:freegi_app/widgets/custom_app_button.dart';
import 'package:get/get.dart';

class MyOrdersItemsWidget extends StatelessWidget {
  const MyOrdersItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed("${AppRoutes.orderDetails}/625262735274");
      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 15).r,
        decoration: BoxDecoration(
          color: AppColor.white,
          border: Border.all(color: AppColor.color_0EBBB6),
          borderRadius: BorderRadius.circular(9).r,
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 65.h,
                  width: 65.h,
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(5).r,
                    boxShadow: [
                      BoxShadow(
                          color: AppColor.black.withOpacity(0.05),
                          blurRadius: 12),
                    ],
                  ),
                  alignment: Alignment.center,
                  child: Image.asset(
                    Assets.imagesDemoAmul,
                    height: 42,
                  ),
                ),
                25.horizontalSpace,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      4.verticalSpace,
                      Text(
                        "#625262735274",
                        style: TextStyle(
                          fontFamily: ptSansFamily,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.spMin,
                          color: AppColor.black,
                        ),
                      ),
                      Text(
                        "#WZ-123, Block Ahmedabad Gujarat",
                        maxLines: 1,
                        style: TextStyle(
                          fontFamily: ptSansFamily,
                          fontWeight: FontWeight.bold,
                          fontSize: 11.spMin,
                          overflow: TextOverflow.ellipsis,
                          color: AppColor.color_555555,
                        ),
                      ),
                      Text(
                        "10 Items",
                        style: TextStyle(
                          fontFamily: ptSansFamily,
                          fontWeight: FontWeight.bold,
                          fontSize: 11.spMin,
                          color: AppColor.color_555555,
                        ),
                      ),
                    ],
                  ),
                ),
                35.horizontalSpace,
                CustomAppButton(
                  btnHeight: 30,
                  btnWidth: 80,
                  borderRadius: 5,
                  labelSize: 12.spMin,
                  btnLabel: 'Ongoing',
                  onPressed: () {},
                )
              ],
            ),
            10.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "10 Apr 2024 at 07:45 PM",
                  style: TextStyle(
                    fontFamily: ptSansFamily,
                    fontWeight: FontWeight.bold,
                    fontSize: 11.spMin,
                    color: AppColor.color_999999,
                  ),
                ),
                Text(
                  "Rs 650",
                  style: TextStyle(
                    fontFamily: ptSansFamily,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.spMin,
                    color: AppColor.black,
                  ),
                )
              ],
            ),
            15.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PannableRatingBar(
                  rate: 0,
                  items: List.generate(
                    5,
                    (index) => RatingWidget(
                      selectedColor: AppColor.color_FBB13C,
                      unSelectedColor: AppColor.color_999999,
                      child: SvgPicture.asset(
                        Assets.imagesEmptyRating,
                        width: 25,
                      ),
                    ),
                  ),
                  onChanged: (value) {
                    // controller.ratingValue(value);
                  },
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 5, 5, 5).r,
                  decoration: BoxDecoration(
                    color: AppColor.color_FBB13C,
                    borderRadius: BorderRadius.circular(5).r,
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.refresh,
                        size: 13,
                        color: AppColor.white,
                      ),
                      2.horizontalSpace,
                      Text(
                        "Reorder",
                        style: TextStyle(
                          fontFamily: poppinsFamily,
                          fontSize: 12.spMin,
                          color: AppColor.white,
                          height: 1.8,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
