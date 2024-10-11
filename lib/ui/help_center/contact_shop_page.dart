import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freegi_app/controller/contact_shop_controller.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:freegi_app/widgets/custom_app_bar.dart';
import 'package:get/get.dart';

import '../../generated/assets.dart';

class ContactShopPage extends GetView<ContactShopController> {
  const ContactShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: const CustomAppBar(title: 'Contact Shop'),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(15).r,
            padding: const EdgeInsets.all(15).r,
            decoration: BoxDecoration(
              border: Border.all(color: AppColor.color_E2E2E2),
              borderRadius: BorderRadius.circular(9).r
            ),
            child: Column(
              children: [
                rowItem(Assets.imagesIcFillContactShop, "Bandra Outlet",
                    isTitleBold: true),
                15.verticalSpace,
                rowItem(
                  Assets.imagesIcLocation,
                  "Bandra West, Mumbai, Mumbai Suburban, Maharasthtra, 400050",
                ),
                15.verticalSpace,
                rowItem(
                  Assets.imagesIcCall,
                  "+91 971583332",
                ),
                15.verticalSpace,
                rowItem(
                  Assets.imagesIcEmail,
                  "vikas.y@technorthstar.com",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget rowItem(
    String assetName,
    String title, {
    bool isTitleBold = false,
  }) {
    return Row(
      children: [
        SizedBox(
          width: 25,
          child: SvgPicture.asset(
            assetName, // width: 25,
          ),
        ),
        8.horizontalSpace,
        Expanded(
          child: Text(
            title,
            maxLines: 2,
            style: isTitleBold
                ? TextStyle(
                    fontFamily: poppinsFamily,
                    fontSize: 18.spMin,
                    fontWeight: FontWeight.w600,
                    color: AppColor.color_0EBBB6,
                  )
                : TextStyle(
                    fontFamily: poppinsFamily,
                    fontSize: 12.spMin,
                    fontWeight: FontWeight.normal,
                    color: AppColor.color_555555,
                  ),
          ),
        )
      ],
    );
  }
}
