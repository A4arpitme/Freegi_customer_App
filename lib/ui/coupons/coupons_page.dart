import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freegi_app/controller/coupons_controller.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/ui/coupons/widgets/coupons_item_widget.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:freegi_app/widgets/custom_app_bar.dart';
import 'package:freegi_app/widgets/custom_app_button.dart';
import 'package:get/get.dart';

class CouponsPage extends GetView<CouponsController> {
  const CouponsPage({super.key});

  InputBorder get border => OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColor.color_F5F5F5,
          width: 2,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: CustomAppBar(
        title: 'Coupons',
        actions: [
          Padding(
            padding: EdgeInsets.all(15).r,
            child: SvgPicture.asset(
              Assets.imagesIcSearch,
              width: 25,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15).r,
        child: Column(
          children: [
            10.verticalSpace,
            SizedBox(
              height: 46,
              child: TextField(
                // maxLines: 1,
                decoration: InputDecoration(
                  hintText: 'Enter Coupon Code',
                  isDense: true,
                  hintStyle: TextStyle(
                    fontFamily: poppinsFamily,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.spMin,
                    color: AppColor.color_999999,
                  ),
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      5.horizontalSpace,
                      CustomAppButton(
                        btnLabel: 'Apply',
                        onPressed: () {},
                        btnHeight: 30,
                        btnWidth: 70,
                        btnPadding: EdgeInsets.zero,
                        labelSize: 10.spMin,
                        borderRadius: 5,
                        btnElevation: 0,
                      ),
                      10.horizontalSpace,
                    ],
                  ),
                  border: border,
                  focusedBorder: border,
                  focusedErrorBorder: border,
                  errorBorder: border,
                  disabledBorder: border,
                  enabledBorder: border,
                ),
              ),
            ),
            Flexible(
              child: ListView.separated(
                padding: const EdgeInsets.only(top: 15, bottom: 25).r,
                itemBuilder: (context, index) => const CouponsItemWidget(),
                separatorBuilder: (context, index) => 10.verticalSpace,
                itemCount: 3,
              ),
            )
          ],
        ),
      ),
    );
  }
}
