import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freegi_app/controller/signup_controller.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/routes/app_routes.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:freegi_app/utils/utils.dart';
import 'package:freegi_app/widgets/custom_app_button.dart';
import 'package:freegi_app/widgets/gradient_widget.dart';
import 'package:get/get.dart';

class SignupPage extends GetView<SignupController> {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: AppColor.transparent,
        systemOverlayStyle: Utils.dark,
      ),
      // extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              const Positioned(
                top: 0,
                right: 0,
                child: GradientWidget(
                  color: AppColor.primaryColor,
                ),
              ),
              // Container(height: 1.sh * 0.6,),
              Image.asset(Assets.imagesSignupHeaderBg),
              Positioned(
                right: 20,
                top: 15,
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoutes.login);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 6,
                    ).r,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.color_01B8B3.withOpacity(0.6),
                    ),
                    child: Text(
                      'Skip >',
                      style: style14RegularWhite,
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColor.white.withOpacity(0.7),
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.black.withOpacity(0.05),
                      blurRadius: 100,
                      spreadRadius: 20,
                      offset: const Offset(10, 10),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    10.verticalSpace,
                    Text(
                      "Get your Organic groceries with ",
                      style: TextStyle(
                        fontFamily: poppinsFamily,
                        fontWeight: FontWeight.w600,
                        fontSize: 20.spMin,
                        height: 0.0,
                      ),
                    ),
                    Image.asset(
                      Assets.imagesAppLogo,
                      height: 40,
                    )
                  ],
                ),
              ),
              Positioned(
                left: 30,
                right: 30,
                bottom: 0,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    const Positioned(
                      child: GradientWidget(color: AppColor.color_FBB13C),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: TextField(
                        controller: controller.phoneController,
                        style: const TextStyle(
                          fontSize: 20,
                          fontFamily: poppinsFamily,
                          fontWeight: FontWeight.w500,
                        ),
                        // keyboardAppearance: Brightness.dark,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          prefixIcon: Obx(
                            () {
                              final country = controller.selectedCountry.value;
                              return GestureDetector(
                                onTap: () =>
                                    controller.openCountryPicker(context),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      country.iswWorldWide
                                          ? '\uD83C\uDF0D'
                                          : country.flagEmoji,
                                      style: const TextStyle(
                                        fontSize: 25,
                                      ),
                                    ),
                                    3.horizontalSpace,
                                    Text(
                                      '+${country.phoneCode}',
                                      style: const TextStyle(
                                        fontSize: 20,
                                        fontFamily: poppinsFamily,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    4.horizontalSpace,
                                    RotatedBox(
                                      quarterTurns: 3,
                                      child: Image.asset(
                                        Assets.imagesBack,
                                        color: AppColor.black,
                                        scale: 5.5,
                                      ),
                                    ),
                                    6.horizontalSpace,
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const Spacer(),
          CustomAppButton(
            padding: const EdgeInsets.symmetric(horizontal: 45).r,
            btnLabel: 'Continue',
            onPressed: () {
              Get.toNamed(
                "${AppRoutes.otp}/${controller.selectedCountry.value.phoneCode}${controller.phoneController.text}",
              );
            },
          ),
          45.verticalSpace,
        ],
      ),
    );
  }
}
