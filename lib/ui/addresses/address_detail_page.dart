import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freegi_app/controller/address_detail_controller.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/enums.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:freegi_app/widgets/custom_app_bar.dart';
import 'package:freegi_app/widgets/custom_app_button.dart';
import 'package:freegi_app/widgets/custom_text_field.dart';
import 'package:get/get.dart';

class AddressDetailPage extends GetView<AddressDetailController> {
  const AddressDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: const CustomAppBar(title: 'Enter Address Details'),
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: IntrinsicHeight(
              child: Column(
                children: [
                  ListTile(
                    tileColor: AppColor.color_F2FFF4,
                    contentPadding: const EdgeInsets.all(15).r,
                    leading: SvgPicture.asset(Assets.imagesIcLocation),
                    title: Text(
                      "District Centre, Janakpuri West, New Delhi -  110023",
                      style: TextStyle(
                        fontFamily: poppinsFamily,
                        fontWeight: FontWeight.w500,
                        fontSize: 12.spMin,
                        color: AppColor.black,
                      ),
                    ),
                    trailing: CustomAppButton(
                      btnLabel: 'Change',
                      onPressed: () {},
                      borderRadius: 5,
                      btnWidth: 70,
                      btnHeight: 30,
                      labelSize: 11,
                    ),
                  ),
                  15.verticalSpace,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15).r,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _getTextField(
                          label: "House / Flat / Block No. *",
                          hint: "Enter House / Flat / Block No.",
                          cntrl: controller.houseFlatCntrl,
                        ),
                        18.verticalSpace,
                        _getTextField(
                          label: "Floor (Optional)",
                          hint: "Enter your Floor no.",
                          cntrl: controller.floorCntrl,
                        ),
                        18.verticalSpace,
                        _getTextField(
                          label: "Apartment / Road  / Locality *",
                          hint: "Enter Apartment / Road  / Locality",
                          cntrl: controller.apartmentCntrl,
                        ),
                        18.verticalSpace,
                        _getTextField(
                          label: "Land Mark and Area Name (Optional)",
                          hint: "Enter Land Mark and Area Name",
                          cntrl: controller.landmarkCntrl,
                        ),
                        25.verticalSpace,
                        Text(
                          "Save Address As",
                          style: TextStyle(
                            fontFamily: poppinsFamily,
                            fontWeight: FontWeight.normal,
                            fontSize: 13.spMin,
                            color: AppColor.black,
                          ),
                        ),
                        15.verticalSpace,
                        SizedBox(
                            height: 35,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: controller.addressTypes.length,
                              itemBuilder: (context, index) {
                                final type = controller.addressTypes[index];

                                return Obx(() {
                                  return GestureDetector(
                                    onTap: () => controller.selectedType(type),
                                    child: addressTypeWidget(
                                        type, controller.selectedType.value),
                                  );
                                });
                              },
                            ))
                      ],
                    ),
                  ),
                  const Spacer(),
                  CustomAppButton(
                    padding: const EdgeInsets.symmetric(horizontal: 35).r,
                    btnLabel: 'Save Address',
                    labelSize: 16.spMin,
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

  Widget addressTypeWidget(AddressTypes type, AddressTypes selectedType) {
    final isSelected = type == selectedType;
    return Container(
      // height: 20,
      margin: const EdgeInsets.only(right: 10).r,
      padding: const EdgeInsets.all(8).r,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: isSelected ? AppColor.white : AppColor.color_F4F5FA,
          border: isSelected ? Border.all(color: AppColor.color_0EBBB6) : null,
          borderRadius: BorderRadius.circular(40).r),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            type.svgName,
            colorFilter: ColorFilter.mode(
              isSelected ? AppColor.color_0EBBB6 : AppColor.black,
              BlendMode.srcIn,
            ),
          ),
          6.horizontalSpace,
          Text(
            type.typeName,
            style: TextStyle(
              fontFamily: poppinsFamily,
              fontWeight: FontWeight.normal,
              fontSize: 11.spMin,
              color: isSelected ? AppColor.color_0EBBB6 : AppColor.black,
            ),
          )
        ],
      ),
    );
  }
}
