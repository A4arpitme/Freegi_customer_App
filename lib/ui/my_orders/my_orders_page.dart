import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freegi_app/controller/my_orders_controller.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/ui/my_orders/widgets/my_orders_items_widget.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:freegi_app/widgets/custom_app_bar.dart';
import 'package:freegi_app/widgets/custom_app_button.dart';
import 'package:get/get.dart';

class MyOrdersPage extends GetView<MyOrdersController> {
  const MyOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'My Orders'),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 15, right: 20).r,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColor.color_16CDC8,
                  AppColor.color_1A7572,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                // stops:
              ),
            ),
            child: Row(
              children: [
                Image.asset(
                  Assets.imagesFruits,
                  height: 50,
                  width: 50,
                ),
                15.horizontalSpace,
                Flexible(
                  child: Text(
                    "3 More Orders Above Rs 2500 to Win Free Gift",
                    style: TextStyle(
                      fontFamily: ptSansFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.spMin,
                      color: AppColor.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          Flexible(
            child: ListView.separated(
              padding: const EdgeInsets.fromLTRB(15,15,15,25).r,
              itemBuilder: (context, index) => const MyOrdersItemsWidget(),
              separatorBuilder: (context, index) => 10.verticalSpace,
              itemCount: 3,
            ),
          )
        ],
      ),
    );
  }
}
