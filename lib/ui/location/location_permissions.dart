import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/routes/app_routes.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:freegi_app/utils/utils.dart';
import 'package:freegi_app/widgets/custom_app_button.dart';
import 'package:freegi_app/widgets/gradient_widget.dart';
import 'package:get/get.dart';

class LocationPermissionsPage extends StatelessWidget {
  const LocationPermissionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: AppColor.transparent,
        systemOverlayStyle: Utils.dark,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40).r,
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerRight,
              child: GradientWidget(color: AppColor.color_0EBBB6),
            ),
            30.verticalSpacingRadius,
            Stack(
              children: [
                const Positioned(
                  bottom: 0,
                  child: GradientWidget(color: AppColor.color_FBB13C),
                ),
                SvgPicture.asset(Assets.imagesIllustration),
              ],
            ),
            20.verticalSpace,
            const Text(
              "Location Permission is off",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: AppColor.black,
                  fontSize: 20,
                  height: 3.0),
            ),
            5.verticalSpace,
            Text(
              'Please Enable location permission for better Delivery Experience',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 14.spMin,
                  fontWeight: FontWeight.w500,
                  fontFamily: poppinsFamily,
                  height: 2.0),
            ),
            const Spacer(),
            CustomAppButton(
              btnLabel: "Enable Location",borderRadius: 10,
              onPressed: () {
                Get.toNamed(AppRoutes.dashboard);
              },
            ),
            10.verticalSpace,
            CustomAppButton(
              btnLabel: "Not Now",
              borderRadius: 10,
              onPressed: () {
                Get.toNamed(AppRoutes.dashboard);
              },
              labelColor: AppColor.black,
              btnColor: AppColor.color_F4F5FA,
            ),
            50.verticalSpace,
          ],
        ),
      ),
    );
  }
}
