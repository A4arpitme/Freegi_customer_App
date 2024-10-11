import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freegi_app/controller/personal_details_controller.dart';
import 'package:freegi_app/routes/app_routes.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:freegi_app/utils/utils.dart';
import 'package:freegi_app/widgets/custom_app_button.dart';
import 'package:freegi_app/widgets/custom_text_field.dart';
import 'package:freegi_app/widgets/gradient_widget.dart';
import 'package:freegi_app/widgets/header_widget.dart';
import 'package:get/get.dart';

class PersonalDetailsPage extends GetView<PersonalDetailsController> {
  const PersonalDetailsPage({super.key});

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
                  25.verticalSpace,
                  Stack(
                    children: [
                      const Positioned(
                        left: 0,
                        right: 40,
                        top: 0,
                        bottom: 0,
                        child: GradientWidget(
                          color: AppColor.color_FBB13C,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CustomTextField(
                              label: 'First Name',
                              hint: "First Name",
                              cntrl: controller.firstNameCntrl,
                            ),
                          ),
                          10.horizontalSpace,
                          Expanded(
                            child: CustomTextField(
                              label: 'Last Name',
                              hint: "Last Name",
                              cntrl: controller.lastNameCntrl,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  10.verticalSpace,
                  CustomTextField(
                    label: 'Email',
                    hint: 'Email',
                    cntrl: controller.emailCntrl,
                    inputType: TextInputType.emailAddress,
                  ),
                  10.verticalSpace,
                  CustomTextField(
                    label: 'Password',
                    hint: 'Password',
                    cntrl: controller.passwordCntrl,
                    obscureText: true,
                    maxLines: 1,
                  ),
                  10.verticalSpace,
                  CustomTextField(
                    label: 'Confirm Password',
                    hint: 'Confirm Password',
                    cntrl: controller.confirmPasswordCntrl,
                    obscureText: true,
                    maxLines: 1,
                  ),
                  20.verticalSpace,
                  const Spacer(),
                  RichText(
                    text: TextSpan(
                      text: 'Existing  User? ',
                      style: TextStyle(
                        fontSize: 16.spMin,
                        fontWeight: FontWeight.normal,
                        fontFamily: poppinsFamily,
                        height: 2.4,
                        color: AppColor.color_767A7E,
                      ),
                      children: [
                        TextSpan(
                          text: 'Login',
                          style: TextStyle(
                            fontSize: 16.spMin,
                            fontWeight: FontWeight.normal,
                            fontFamily: poppinsFamily,
                            height: 2.4,
                            color: AppColor.color_0EBBB6,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.toNamed(AppRoutes.login),
                        )
                      ],
                    ),
                  ),
                  5.verticalSpace,
                  CustomAppButton(
                    padding: const EdgeInsets.symmetric(horizontal: 25).r,
                    borderRadius: 10,
                    btnLabel: 'SUBMIT',
                    onPressed: () {
                      Get.toNamed(AppRoutes.location);
                    },
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
