import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freegi_app/controller/help_center_controller.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/routes/app_routes.dart';
import 'package:freegi_app/ui/web_widget/app_web_page.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/enums.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:freegi_app/widgets/custom_app_bar.dart';
import 'package:get/get.dart';

class HelpCenterPage extends GetView<HelpCenterController> {
  const HelpCenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: const CustomAppBar(title: 'Help Center'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15).r,
        child: Column(
          children: [
            TabBar(
              // tabAlignment: TabAlignment.center,
              indicatorSize: TabBarIndicatorSize.tab,
              controller: controller.tabCntrl,
              tabs: controller.myTabs,
              unselectedLabelStyle: TextStyle(
                fontFamily: poppinsFamily,
                fontWeight: FontWeight.w500,
                fontSize: 16.spMin,
                color: AppColor.black,
              ),
              indicatorColor: AppColor.color_0EBBB6,
              indicatorWeight: 3,
              labelStyle: TextStyle(
                fontFamily: poppinsFamily,
                fontWeight: FontWeight.w500,
                fontSize: 16.spMin,
                color: AppColor.color_0EBBB6,
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: controller.tabCntrl,
                children: [
                  faqScreen,
                  contactUsScreen,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget get faqScreen => AppWebPage("https://www.google.com/");

  Widget get contactUsScreen => ListView.separated(
        padding: const EdgeInsets.fromLTRB(0, 25, 0, 35).r,
        itemBuilder: (context, index) {
          final contactType = controller.contactUsTypes[index];
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: AppColor.color_E2E2E2),
              borderRadius: BorderRadius.circular(9).r,
            ),
            child: ListTile(
              onTap: () {
                onTap(contactType);
              },
              leading: SvgPicture.asset(contactType.typeSvgName),
              title: Text(
                contactType.typeName,
                style: TextStyle(
                  fontFamily: poppinsFamily,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.spMin,
                  color: AppColor.black,
                ),
              ),
              trailing: SvgPicture.asset(Assets.imagesSideForward),
            ),
          );
        },
        separatorBuilder: (context, index) => 20.verticalSpace,
        itemCount: controller.contactUsTypes.length,
      );


  void onTap(ContactUsTypes type){
    switch(type){

      case ContactUsTypes.customerService:
        Get.toNamed(AppRoutes.customerService);
        return;
      case ContactUsTypes.contactShop:
        Get.toNamed(AppRoutes.contactShop);
        return;
      case ContactUsTypes.whatsapp:
        // TODO: Handle this case.
      case ContactUsTypes.website:
        // TODO: Handle this case.
      case ContactUsTypes.facebook:
        // TODO: Handle this case.
      case ContactUsTypes.instagram:
        // TODO: Handle this case.
    }
  }
}
