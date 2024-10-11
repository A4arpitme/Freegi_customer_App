import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freegi_app/controller/otp_controller.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/routes/app_routes.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:freegi_app/utils/utils.dart';
import 'package:freegi_app/widgets/custom_app_button.dart';
import 'package:freegi_app/widgets/gradient_widget.dart';
import 'package:freegi_app/widgets/otp_input.dart';
import 'package:get/get.dart';

class OtpScreen extends GetView<OtpController> {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String phone = Get.parameters['phone'] ?? '';
    print("phone:- ${phone}");
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leadingWidth: 65,
        leading: GestureDetector(
          onTap: Get.back,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset(
              Assets.imagesBack,
              color: AppColor.black,
            ),
          ),
        ),
        backgroundColor: AppColor.transparent,
        systemOverlayStyle: Utils.dark,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20).r,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Align(
              alignment: Alignment.centerRight,
              child: GradientWidget(
                color: AppColor.primaryColor,
              ),
            ),
            Text(
              "OTP Verification",
              style: TextStyle(
                  fontFamily: poppinsFamily,
                  fontSize: 28.spMin,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              'we have just sent a code to\n+${phone}',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12.spMin,
                fontFamily: poppinsFamily,
              ),
            ),
            150.verticalSpace,
            Stack(
              children: [
                const Positioned(
                  right: 10,
                  top: 0,
                  bottom: 0,
                  left: 0,
                  child: GradientWidget(color: AppColor.color_FBB13C),
                ),
                OTPInput(otpController: controller.otpController),
              ],
            ),
            20.verticalSpace,
            Align(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                  text: 'Didn’t receive the code? ',
                  style: TextStyle(
                    fontFamily: poppinsFamily,
                    color: AppColor.color_555555,
                    fontSize: 13.spMin,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    TextSpan(
                        text: 'Resend Code',
                        style: TextStyle(
                          fontFamily: poppinsFamily,
                          color: AppColor.color_F50E1C,
                          fontSize: 13.spMin,
                          fontWeight: FontWeight.w500,
                        ))
                  ],
                ),
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.center,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'By Signup, you agree to our\n',
                  style: TextStyle(
                    fontFamily: poppinsFamily,
                    color: AppColor.color_555555,
                    fontSize: 13.spMin,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    TextSpan(
                      text: 'Terms',
                      style: TextStyle(
                        fontFamily: poppinsFamily,
                        color: AppColor.color_0EBBB6,
                        fontSize: 13.spMin,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const TextSpan(text: ' and '),
                    TextSpan(
                      text: 'Condition',
                      style: TextStyle(
                        fontFamily: poppinsFamily,
                        color: AppColor.color_0EBBB6,
                        fontSize: 13.spMin,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            15.verticalSpace,
            CustomAppButton(
              onPressed: () {
                Get.toNamed(AppRoutes.personalDetails);
              },
              btnLabel: "Verify and Proceed",
            ),
            20.verticalSpace,
          ],
        ),
      ),
    );
  }
}
