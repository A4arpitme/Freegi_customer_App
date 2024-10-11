import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freegi_app/controller/return_exchange_controller.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/widgets/custom_app_bar.dart';
import 'package:freegi_app/widgets/custom_app_button.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';
import '../../utils/text_styles.dart';

class ReturnExchangePage extends GetView<ReturnExchangeController> {
  const ReturnExchangePage({super.key});

  @override
  Widget build(BuildContext context) {
    final title = Get.parameters['title'] ?? "";
    return Scaffold(
      appBar: CustomAppBar(title: title),
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 15).r,
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  20.verticalSpace,
                  ...List.generate(
                    4,
                    (index) => Builder(builder: (context) {
                      bool isChecked = false;
                      return StatefulBuilder(
                        builder: (context, setState) {
                          return Row(
                            children: [
                              Checkbox(
                                value: isChecked,
                                activeColor: AppColor.color_FBB13C,
                                visualDensity: const VisualDensity(
                                  horizontal: VisualDensity.minimumDensity,
                                  vertical: VisualDensity.minimumDensity,
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                              ),
                              Text(
                                "Reason ${index + 1}",
                                style: TextStyle(
                                  fontFamily: poppinsFamily,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18.spMin,
                                  color: AppColor.color_333333,
                                ),
                              )
                            ],
                          );
                        },
                      );
                    }),
                  ),
                  15.verticalSpace,
                  Text(
                    'Others:',
                    style: TextStyle(
                      fontFamily: poppinsFamily,
                      fontWeight: FontWeight.normal,
                      fontSize: 18.spMin,
                      color: AppColor.color_333333,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColor.color_767A7E),
                      borderRadius: BorderRadius.circular(10).r,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10).r,
                      child: const TextField(
                        minLines: 3,
                        maxLines: 5,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColor.color_F1F0F0,
                            border: InputBorder.none),

                      ),
                    ),
                  ),
                  25.verticalSpace,
                  Spacer(),
                  DottedBorder(
                    color: AppColor.color_CBD0DC,
                    strokeWidth: 3,
                    dashPattern: [10,6],
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(7).r  ,
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        children: [
                          30.verticalSpace,
                          SvgPicture.asset(Assets.imagesAddImages),
                          Text(
                            "Choose a image or Capture image",
                            style: TextStyle(
                              fontFamily: poppinsFamily,
                              fontSize: 15.spMin,
                              fontWeight: FontWeight.w500,
                              color: AppColor.color_292D32
                            ),
                          ),
                          30.verticalSpace,
                        ],
                      ),
                    ),
                  ),
                  // 20.verticalSpace,
                  Spacer(flex: 3,),
                  Align(
                    alignment: Alignment.center,
                    child: CustomAppButton(
                      // padding: const EdgeInsets.symmetric(horizontal: 48).r,
                      btnWidth: 250.w,
                      btnLabel: 'SUBMIT',
                      onPressed: () {},
                      labelSize: 20.spMin,
                    ),
                  ),
                  35.verticalSpace,
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
