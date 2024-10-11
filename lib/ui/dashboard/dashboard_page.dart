import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freegi_app/controller/dashboard_controller.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/routes/app_routes.dart';
import 'package:freegi_app/ui/sidemenu/side_menu_page.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:get/get.dart';

class DashboardPage extends GetView<DashboardController> {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: AppRoutes.home,
        onGenerateRoute: controller.onGenerateRoute,
      ),
      drawer: SideMenuPage(),
      drawerEdgeDragWidth: 250,
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          onTap: controller.changePage,
          type: BottomNavigationBarType.fixed,
          unselectedLabelStyle: TextStyle(
            fontFamily: poppinsFamily,
            fontWeight: FontWeight.normal,
            fontSize: 14.spMin,
            color: AppColor.color_6D6D6D,
          ),
          selectedLabelStyle: TextStyle(
            fontFamily: poppinsFamily,
            fontWeight: FontWeight.normal,
            fontSize: 14.spMin,
            color: AppColor.color_01B8B3,
          ),
          selectedItemColor: AppColor.color_01B8B3,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Assets.imagesHome),
              activeIcon: SvgPicture.asset(
                Assets.imagesHome,
                colorFilter: const ColorFilter.mode(
                  AppColor.color_01B8B3,
                  BlendMode.srcIn,
                ),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Assets.imagesBottomMyOrder),
              label: "My Order",
              activeIcon: SvgPicture.asset(
                Assets.imagesBottomMyOrder,
                colorFilter: const ColorFilter.mode(
                  AppColor.color_01B8B3,
                  BlendMode.srcIn,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Assets.imagesBottomMessages),
              label: "Messages",
              activeIcon: SvgPicture.asset(
                Assets.imagesBottomMessages,
                colorFilter: const ColorFilter.mode(
                  AppColor.color_01B8B3,
                  BlendMode.srcIn,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Assets.imagesBottomProfile),
              label: "Profile",
              activeIcon: SvgPicture.asset(
                Assets.imagesBottomProfile,
                colorFilter: const ColorFilter.mode(
                  AppColor.color_01B8B3,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
