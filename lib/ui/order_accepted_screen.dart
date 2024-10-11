import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/routes/app_routes.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:freegi_app/widgets/custom_app_button.dart';
import 'package:get/get.dart';

class OrderAcceptedScreen extends StatelessWidget {
  const OrderAcceptedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35).r,
          child: Column(
            children: [
              Spacer(),
              SvgPicture.asset(Assets.imagesOrderAccepted),
              15.verticalSpace,
              Text(
                "Your Order has been  Accepted",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: poppinsFamily,
                  fontWeight: FontWeight.w600,
                  fontSize: 22.spMin,
                ),
              ),
              5.verticalSpace,
              Text(
                "Your items has been placed and is on it’s way to being processed",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: poppinsFamily,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.spMin,
                  color: AppColor.color_555555,
                ),
              ),
              const Spacer(),
              CustomAppButton(
                btnHeight: 56.h,
                onPressed: () {
                  Get.offNamedUntil("${AppRoutes.orderDetails}/625262735274",ModalRoute.withName(AppRoutes.dashboard),);

                },
                btnLabel: "Track Order",
                labelSize: 15.spMin,
              ),
              5.verticalSpace,
              TextButton(
                onPressed: () {
                  Get.offAllNamed(AppRoutes.dashboard);

                },
                child: Text(
                  "Back to Home",
                  style: TextStyle(
                    fontFamily: poppinsFamily,
                    fontSize: 14.spMin,
                    fontWeight: FontWeight.w500,
                    color: AppColor.black,
                  ),
                ),
              ),
              35.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
