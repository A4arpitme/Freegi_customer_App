import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freegi_app/controller/wallet_controller.dart';
import 'package:freegi_app/routes/app_routes.dart';
import 'package:freegi_app/ui/wallet/widgets/wallet_item_widget.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:freegi_app/widgets/custom_app_bar.dart';
import 'package:freegi_app/widgets/custom_app_button.dart';
import 'package:get/get.dart';

class WalletPage extends GetView<WalletController> {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: const CustomAppBar(title: 'Wallet'),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(15).r,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 35,
              ).r,
              decoration: BoxDecoration(
                  color: AppColor.color_F1FFF3,
                  borderRadius: BorderRadius.circular(9).r),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Your Balance",
                          style: TextStyle(
                            fontFamily: ptSansFamily,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.spMin,
                            color: AppColor.black,
                          ),
                        ),
                        Text(
                          "Rs 1,560",
                          style: TextStyle(
                            fontFamily: ptSansFamily,
                            fontWeight: FontWeight.bold,
                            fontSize: 24.spMin,
                            color: AppColor.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomAppButton(
                    btnLabel: "Add Money",
                    onPressed: () {
                      Get.toNamed(AppRoutes.topUpWallet);
                    },
                    labelSize: 14.spMin,
                    btnWidth: 130.w,
                    btnElevation: 0,
                  )
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 15).r,
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 2,
                (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Today",
                      style: TextStyle(
                        fontFamily: ptSansFamily,
                        fontWeight: FontWeight.normal,
                        fontSize: 14.spMin,
                        color: AppColor.color_555555,
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => WalletItemWidget(),
                      itemCount: 3,
                    ),
                    15.verticalSpace,
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
