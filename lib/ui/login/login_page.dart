import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freegi_app/controller/login_controller.dart';
import 'package:freegi_app/routes/app_routes.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:freegi_app/utils/utils.dart';
import 'package:freegi_app/widgets/custom_app_button.dart';
import 'package:freegi_app/widgets/custom_text_field.dart';
import 'package:freegi_app/widgets/gradient_widget.dart';
import 'package:freegi_app/widgets/header_widget.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: AppColor.transparent,
        systemOverlayStyle: Utils.dark,
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 15).r,
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: IntrinsicHeight(
              child: Column(
                children: [
                  const Stack(
                    children: [
                      Positioned(
                        right: 0,
                        child: GradientWidget(
                          color: AppColor.color_0EBBB6,
                        ),
                      ),
                      HeaderWidget(),
                    ],
                  ),
                  80.verticalSpace,
                  Stack(
                    children: [
                      const Positioned(
                        left: 0,
                        right: 0,
                        top: 0,
                        bottom: 50,
                        child: GradientWidget(color: AppColor.color_FBB13C),
                      ),
                      CustomTextField(
                        label: "Phone Number",
                        hint: "Phone Number",
                        cntrl: controller.phoneNumberCntrl,
                        inputType: TextInputType.phone,
                      ),
                    ],
                  ),
                  30.verticalSpace,
                  CustomTextField(
                    label: "Password",
                    hint: "Password",
                    cntrl: controller.passwordCntrl,
                    obscureText: true,
                    maxLines: 1,
                  ),
                  Obx(
                    () {
                      return Row(
                        children: [
                          Checkbox(
                            value: controller.rememberMe.value,
                            onChanged: (value) {
                              controller.rememberMe(value);
                            },
                            activeColor: AppColor.color_FBB13C,
                            visualDensity: VisualDensity(
                              horizontal: VisualDensity.minimumDensity,
                            ),
                          ),
                          Text(
                            'Remember  me',
                            style: TextStyle(
                                fontSize: 12.spMin,
                                fontFamily: poppinsFamily,
                                fontWeight: FontWeight.normal,
                                height: 1.8,
                                color: AppColor.color_2D2D2D.withOpacity(0.5)),
                          )
                        ],
                      );
                    },
                  ),
                  40.verticalSpace,
                  Spacer(),
                  CustomAppButton(
                    padding: const EdgeInsets.symmetric(horizontal: 25).r,
                    btnLabel: "LOGIN",
                    borderRadius: 10,
                    onPressed: () {
                      Get.toNamed(AppRoutes.location);
                    },
                  ),
                  10.verticalSpace,

                  ///TODO Change font family Doppio One
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'OR\n',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 15.spMin,
                          // height: 1.8,
                          color: AppColor.color_767A7E),
                      children: [
                        TextSpan(
                          text: 'Create a Account',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.toNamed(AppRoutes.signUp),
                        ),
                      ],
                    ),
                  ),
                  25.verticalSpace,
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
