import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:freegi_app/controller/top_up_controller.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:freegi_app/widgets/custom_app_bar.dart';
import 'package:freegi_app/widgets/custom_app_button.dart';
import 'package:get/get.dart';

class WalletTopUpPage extends GetView<TopUpController> {
  const WalletTopUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: const CustomAppBar(title: 'Top-Up Wallet'),
      body: Padding(
        padding: const EdgeInsets.all(15).r,
        child: Column(
          children: [
            Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 35,
                ).r,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: AppColor.color_F1FFF3,
                    borderRadius: BorderRadius.circular(9).r),
                child: Obx(() {
                  return Text(
                    controller.selectedAmount.value,
                    style: TextStyle(
                      fontFamily: ptSansFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: 32.spMin,
                      color: AppColor.color_1BB6B2,
                    ),
                  );
                })),
            20.verticalSpace,
            Flexible(
              child: AlignedGridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                itemCount: controller.amounts.length,
                itemBuilder: (context, index) {
                  return Obx(() {
                    debugPrint("REBUILDING");
                    final amount = controller.amounts[index];
                    final isSelected =
                        controller.selectedAmount.value == amount;
                    return GestureDetector(
                      onTap: () {
                        controller.selectedAmount(amount);
                      },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: isSelected
                              ? AppColor.color_FBB13C
                              : AppColor.color_F4F5FA,
                          borderRadius: BorderRadius.circular(6).r,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          amount,
                          style: TextStyle(
                            fontFamily: ptSansFamily,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.spMin,
                            color: isSelected ? AppColor.white : AppColor.black,
                          ),
                        ),
                      ),
                    );
                  });
                },
              ),
            ),
            20.verticalSpace,
            CustomAppButton(
              btnLabel: "Top Up",
              onPressed: () {
                Get.back();
              },
              labelSize: 14.spMin,
              btnElevation: 0,
            ),
            30.verticalSpace,
          ],
        ),
      ),
    );
  }
}
