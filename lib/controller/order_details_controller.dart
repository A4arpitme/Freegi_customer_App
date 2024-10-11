import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:freegi_app/widgets/custom_app_button.dart';
import 'package:get/get.dart';

class OrderDetailsController extends GetxController {
  RxDouble ratingValue = 0.0.obs;

  void openCancelDialog() {
    bool isChecked = false;
    Get.bottomSheet(
      Container(
        constraints: BoxConstraints(maxHeight: Get.height * 0.7),
        padding: const EdgeInsets.fromLTRB(15,5,15,10).r,
        decoration: BoxDecoration(
            color: AppColor.white,
          borderRadius: BorderRadius.circular(10).r
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              25.verticalSpace,
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(),
                  ),
                ),
                child: Text(
                  "Cancel Reasons",
                  style: TextStyle(
                    fontFamily: poppinsFamily,
                    fontWeight: FontWeight.w500,
                    fontSize: 30.spMin,
                    color: AppColor.black,
                  ),
                ),
              ),
              ...List.generate(
                8,
                (index) => StatefulBuilder(
                  builder: (context, setState) {
                    return Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          activeColor: AppColor.color_FBB13C,
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
                ),
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
              35.verticalSpace,
              CustomAppButton(
                padding: EdgeInsets.symmetric(horizontal: 20).r ,
                btnLabel: 'SUBMIT',
                onPressed: () {},
                labelSize: 20.spMin,
              ),
              20.verticalSpace,
            ],
          ),
        ),
      ),
      isScrollControlled: true,
    );
  }
}
