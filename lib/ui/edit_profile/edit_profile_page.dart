import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freegi_app/controller/edit_profile_controller.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:freegi_app/widgets/custom_app_bar.dart';
import 'package:freegi_app/widgets/custom_app_button.dart';
import 'package:freegi_app/widgets/custom_drop_down.dart';
import 'package:freegi_app/widgets/custom_text_field.dart';
import 'package:get/get.dart';

class EditProfilePage extends GetView<EditProfileController> {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: const CustomAppBar(title: 'Profile'),
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 15).r,
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  25.verticalSpace,
                  Align(
                    alignment: Alignment.center,
                    child: Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10).r,
                          decoration: const BoxDecoration(
                            color: AppColor.color_E9EDF0,
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset(
                            Assets.imagesDefaultProfilePic,
                            height: 84,
                          ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: Container(
                            padding: const EdgeInsets.all(4).r,
                            decoration: BoxDecoration(
                              color: AppColor.black,
                              shape: BoxShape.circle
                            ),
                            child: SvgPicture.asset(
                              Assets.imagesIcCamera,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  35.verticalSpace,
                  _getTextField(
                    hint: "Enter Full Name",
                    label: "Full Name",
                    cntrl: controller.fullNameCntrl,
                  ),
                  15.verticalSpace,
                  _getTextField(
                    hint: "Enter Phone",
                    label: "Phone",
                    cntrl: controller.fullNameCntrl,
                  ),
                  15.verticalSpace,
                  _getTextField(
                    hint: "Enter Email",
                    label: "Email",
                    cntrl: controller.fullNameCntrl,
                  ),
                  15.verticalSpace,
                  Text(
                    "Gender",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.spMin,
                      letterSpacing: 0.8,
                      // height: 2.2,
                      color: AppColor.black,
                    ),
                  ),
                  CustomDropDown<CommonDropDownModel>(
                    items: controller.genderValues,
                    selectedItem: controller.selectedGender.value,
                    callback: (p0) {
                      controller.selectedGender(p0);
                    },
                    hint: "Select gender",
                  ),
                  15.verticalSpace,
                  _getTextField(
                    hint: "Enter Date of Birth",
                    label: "Date of Birth",
                    cntrl: controller.dobCntrl,
                    readOnly: true,
                    onTap: () {
                      controller.openDatePicker(context);
                    },
                  ),
                  20.verticalSpace,
                  Spacer(),
                  CustomAppButton(
                    padding: EdgeInsets.symmetric(horizontal: 20).r,
                    btnLabel: "Update",
                    borderRadius: 10,
                    onPressed: () {},
                  ),
                  30.verticalSpace,
                ],
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget _getTextField({
    required String hint,
    required String label,
    required TextEditingController cntrl,
    bool readOnly = false,
    VoidCallback? onTap,
  }) {
    return CustomTextField(
      label: label,
      hint: hint,
      height: 35,
      maxLines: 1,
      contentPadding: const EdgeInsets.fromLTRB(5, 0, 10, 5),
      cntrl: cntrl,
      readOnly: readOnly,
      onTap: onTap,
      textStyle: TextStyle(
        fontFamily: poppinsFamily,
        fontWeight: FontWeight.normal,
        fontSize: 14.spMin,
        color: AppColor.black,
      ),
      hintStyle: TextStyle(
        fontFamily: poppinsFamily,
        fontWeight: FontWeight.normal,
        fontSize: 14.spMin,
        color: AppColor.color_555555,
      ),
      textFieldBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColor.color_E2E2E2,
        ),
      ),
    );
  }
}
