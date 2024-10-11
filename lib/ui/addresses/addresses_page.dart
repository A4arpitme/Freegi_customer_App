import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/routes/app_routes.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:freegi_app/widgets/custom_app_bar.dart';
import 'package:get/get.dart';

class AddressesPage extends StatelessWidget {
  const AddressesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: CustomAppBar(title: 'Addresses'),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(color: AppColor.color_F2FFFF),
            child: ListTile(
              onTap: () {
                Get.toNamed(AppRoutes.addressDetail);
              },
              leading: Icon(
                Icons.add,
                color: AppColor.color_0EBBB6,
              ),
              title: Text(
                'Add New Address',
                style: TextStyle(
                  fontFamily: poppinsFamily,
                  fontWeight: FontWeight.w500,
                  fontSize: 12.spMin,
                  color: AppColor.color_0EBBB6,
                ),
              ),
              trailing: SvgPicture.asset(Assets.imagesSideForward),
            ),
          ),
          Flexible(
              child: ListView.builder(
                itemCount: 5,
            itemBuilder: (context, index) => ListTile(
              leading: SvgPicture.asset(Assets.imagesAddressHome),
              title: Text(
                "Home",
                style: TextStyle(
                  fontFamily: poppinsFamily,
                  fontSize: 14.spMin,
                  color: AppColor.black,
                ),
              ),
              subtitle: Text(
                "WZ-123, Block A, West Janakpuri, New Delhi - 110053",
                style: TextStyle(
                  fontFamily: poppinsFamily,
                  fontSize: 12.spMin,
                  color: AppColor.color_555555,
                ),
              ),
              trailing: const Icon(
                Icons.more_horiz,
                color: AppColor.color_0EBBB6,
              ),
            ),
          ))
        ],
      ),
    );
  }
}
