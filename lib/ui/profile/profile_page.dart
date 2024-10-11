import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/routes/app_routes.dart';
import 'package:freegi_app/ui/web_widget/app_web_page.dart';
import 'package:freegi_app/utils/app_constants.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/enums.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:freegi_app/widgets/custom_text_field.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  final profileOptions = ProfileOptions.values;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 15, bottom: 25).r,
            color: AppColor.color_0EBBB6,
            child: Column(
              children: [
                Image.asset(
                  Assets.imagesLogoF,
                  width: 30,
                  height: 40,
                ),
                5.verticalSpace,
                Container(
                  height: 100,
                  padding: const EdgeInsets.all(10).r,
                  decoration: const BoxDecoration(
                    color: AppColor.color_E9EDF0,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    Assets.imagesDefaultProfilePic,
                    // height: 100,
                  ),
                ),
                10.verticalSpace,
                Text(
                  "Melodie Allison",
                  style: TextStyle(
                    fontFamily: poppinsFamily,
                    fontWeight: FontWeight.w500,
                    fontSize: 25.spMin,
                    color: AppColor.white,
                  ),
                ),
                5.verticalSpace,
                Text(
                  "+91 65655 8XXX8",
                  style: TextStyle(
                    fontFamily: poppinsFamily,
                    fontWeight: FontWeight.w500,
                    fontSize: 15.spMin,
                    color: AppColor.white,
                  ),
                )
              ],
            ),
          ),
          Flexible(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: profileOptions.length,
              padding: const EdgeInsets.symmetric(horizontal: 20).r,
              itemBuilder: (context, index) {
                final option = profileOptions[index];
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  onTap: () => onOptionTap(option),
                  leading: Image.asset(
                    option.imageName,
                    width: 30,
                  ),
                  title: Text(
                    option.optionName,
                    style: TextStyle(
                      fontFamily: poppinsFamily,
                      fontWeight: FontWeight.normal,
                      fontSize: 18.spMin,
                      color: AppColor.black,
                    ),
                  ),
                  trailing: SvgPicture.asset(
                    Assets.imagesSideForward,
                    height: 20,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  void onOptionTap(ProfileOptions option) {
    switch (option) {
      case ProfileOptions.orderHistory:
        Get.toNamed(AppRoutes.myOrders);
        return;
      case ProfileOptions.privacyPolicy:
      case ProfileOptions.termsCondition:
        Get.to(AppWebPage(AppConstants.googleLink, title: option.optionName));
        return;
      case ProfileOptions.logout:
        Get.offAllNamed(AppRoutes.login);
        return;
    }
  }
}
