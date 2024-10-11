import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freegi_app/controller/customer_service_controller.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/routes/app_routes.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:freegi_app/widgets/custom_app_bar.dart';
import 'package:freegi_app/widgets/custom_app_button.dart';
import 'package:freegi_app/widgets/custom_text_field.dart';
import 'package:get/get.dart';

class CustomerServicePage extends GetView<CustomerServiceController> {
  const CustomerServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColor.white,
      appBar: const CustomAppBar(title: 'Customer Service'),
      body: LayoutBuilder(builder: (context, constraint) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraint.maxHeight),
            child: IntrinsicHeight(
              child: Column(
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15).r,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Spacer(),
                          Text(
                            "Write Us",
                            style: TextStyle(
                              fontFamily: poppinsFamily,
                              fontWeight: FontWeight.w600,
                              fontSize: 16.spMin,
                              color: AppColor.black,
                            ),
                          ),
                          Text(
                            "Let us know your query",
                            style: TextStyle(
                              fontFamily: poppinsFamily,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.spMin,
                              color: AppColor.color_555555,
                            ),
                          ),
                          Spacer(),

                          getTextField(
                            "Your phone number",
                            "Phone Number",
                            controller.phoneCntrl,
                          ),
                          getTextField(
                            "Your email address",
                            "Email Address",
                            controller.emailCntrl,
                          ),
                          getTextField(
                            "Write your message",
                            "Add your issue/feedback",
                            controller.issueCntrl,
                          ),
                          getTextField(
                            "Booking Id (optional)",
                            "If issue related to order booking",
                            controller.bookIdCntrl,
                          ),

                          // SizedBox.expand(),
                          Spacer(
                            flex: 4,
                          ),

                          CustomAppButton(
                            btnLabel: 'Submit',
                            labelSize: 15.spMin,
                            onPressed: () {},
                          ),

                          Spacer(
                            flex: 3,
                          ),
                          // SizedBox.expand(),
                        ],
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.chat);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10).r,
                      color: AppColor.black,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            Assets.imagesContactCustomerService,
                            colorFilter: const ColorFilter.mode(
                              AppColor.white,
                              BlendMode.srcIn,
                            ),
                          ),
                          10.horizontalSpace,
                          Text(
                            "Let’s Chat with Us",
                            style: TextStyle(
                              fontFamily: poppinsFamily,
                              fontWeight: FontWeight.w600,
                              fontSize: 14.spMin,
                              color: AppColor.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget getTextField(
    String hint,
    String label,
    TextEditingController cntrl,
  ) {
    return Column(
      children: [
        CustomTextField(
          label: label,
          hint: hint,
          cntrl: cntrl,
          contentPadding: EdgeInsets.zero,
          textStyle: TextStyle(
            fontFamily: poppinsFamily,
            fontWeight: FontWeight.w500,
            fontSize: 12.spMin,
            color: AppColor.color_555555,
          ),
          textFieldBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColor.color_DEDEE8)),
          hintStyle: TextStyle(
            fontFamily: poppinsFamily,
            fontWeight: FontWeight.normal,
            fontSize: 12.spMin,
            color: AppColor.color_CCCCCC,
          ),
          labelStyle: TextStyle(
            fontFamily: poppinsFamily,
            fontWeight: FontWeight.w500,
            fontSize: 12.spMin,
            color: AppColor.color_555555,
          ),
        ),
        20.verticalSpace,
      ],
    );
  }
}
