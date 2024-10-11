import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freegi_app/controller/payment_controller.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/routes/app_routes.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:freegi_app/widgets/custom_app_bar.dart';
import 'package:freegi_app/widgets/custom_app_button.dart';
import 'package:get/get.dart';

class PaymentPage extends GetView<PaymentController> {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: const CustomAppBar(title: 'Payment'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15).r,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            10.verticalSpace,
            Text(
              "Choose Method",
              style: TextStyle(
                fontFamily: ptSansFamily,
                fontWeight: FontWeight.bold,
                fontSize: 16.spMin,
                color: AppColor.black,
              ),
            ),
            25.verticalSpace,
            Container(
              padding: const EdgeInsets.fromLTRB(20, 15, 15, 15).r,
              decoration: BoxDecoration(
                border: Border.all(color: AppColor.color_E2E2E2),
                borderRadius: BorderRadius.circular(9).r,
              ),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                visualDensity: const VisualDensity(
                  horizontal: VisualDensity.minimumDensity,
                  vertical: VisualDensity.minimumDensity,
                ),
                minLeadingWidth: 70,
                leading: SvgPicture.asset(Assets.imagesIcWallet),
                title: Text(
                  "My Wallet",
                  style: TextStyle(
                    fontFamily: ptSansFamily,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.spMin,
                    color: AppColor.black,
                  ),
                ),
                subtitle: Text(
                  "Balance : Rs 1,560",
                  style: TextStyle(
                    fontFamily: ptSansFamily,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.spMin,
                    color: AppColor.color_999999,
                  ),
                ),
                trailing: Radio(
                  value: true,
                  groupValue: true,
                  visualDensity: const VisualDensity(
                    horizontal: VisualDensity.minimumDensity,
                    vertical: VisualDensity.minimumDensity,
                  ),
                  activeColor: AppColor.color_0EBBB6,
                  onChanged: (value) {},
                ),
              ),
            ),
            const Spacer(),
            CustomAppButton(
              btnLabel: 'Pay Now',
              onPressed: () {
                Get.toNamed(AppRoutes.orderAccepted);
              },
              labelSize: 16.spMin,
              padding: const EdgeInsets.symmetric(horizontal: 15).r ,
            ),
            30.verticalSpace,
          ],
        ),
      ),
    );
  }
}
