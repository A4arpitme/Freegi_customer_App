import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freegi_app/controller/dashboard_controller.dart';
import 'package:freegi_app/controller/home_controller.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/routes/app_routes.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/enums.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:get/get.dart';

class SideMenuPage extends StatelessWidget {
  SideMenuPage({super.key});

  final sideMenuList = SideMenu.values;

  final dashboardCntrl = Get.find<DashboardController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.8,
      color: AppColor.white,
      child: Column(
        children: [
          Container(
            color: AppColor.color_0EBBB6,
            child: SafeArea(
              child: Column(
                children: [
                  10.verticalSpace,
                  Container(
                    width: 80,
                    height: 80,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: AppColor.color_E9EDF0,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(Assets.imagesDefaultProfilePic),
                  ),
                  10.verticalSpace,
                  Container(
                    width: 210.w,
                    padding: const EdgeInsets.fromLTRB(25, 5, 15, 8).r,
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(40).r,
                      boxShadow: [
                        BoxShadow(
                            color: AppColor.color_0029FF.withOpacity(0.05),
                            blurRadius: 3.5,
                            spreadRadius: 5
                            // offset: const Offset(0, 1.75),
                            )
                      ],
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            3.verticalSpace,
                            Text(
                              "Vikas Yadav",
                              style: TextStyle(
                                fontFamily: poppinsFamily,
                                fontSize: 14.spMin,
                                fontWeight: FontWeight.w600,
                                // height: 2.1,
                              ),
                            ),
                            3.verticalSpace,
                            Text(
                              "+91 9876543210",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: urbanistFamily,
                                  fontSize: 12.27.spMin,
                                  color: AppColor.color_999999),
                            )
                          ],
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            dashboardCntrl.scaffoldKey.currentState?.closeDrawer();
                            Get.toNamed(AppRoutes.editProfile);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(5).r,
                            decoration: const BoxDecoration(
                                color: AppColor.black, shape: BoxShape.circle),
                            child: SvgPicture.asset(Assets.imagesIcEdit),
                          ),
                        )
                      ],
                    ),
                  ),
                  15.verticalSpace,
                  Row(
                    children: [
                      Expanded(
                          child: mainItem(
                              Assets.imagesWishlist, 'Wishlist', true)),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            dashboardCntrl.scaffoldKey.currentState?.closeDrawer();
                            Get.toNamed(AppRoutes.cart);
                          },
                          child: mainItem(
                            Assets.imagesCart,
                            'Cart',
                            true,
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            dashboardCntrl.scaffoldKey.currentState?.closeDrawer();
                            Get.find<DashboardController>().changePage(1);
                          },
                          child: mainItem(
                            Assets.imagesMyOrders,
                            'My Orders',
                            false,
                          ),
                        ),
                      ),
                    ],
                  ),
                  15.verticalSpace,
                ],
              ),
            ),
          ),
          Flexible(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: sideMenuList.length,
              itemBuilder: (context, index) => sideItem(
                sideMenuList[index],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget sideItem(SideMenu menu) {
    return ListTile(
      leading: menu.isSvg
          ? SvgPicture.asset(menu.imageName)
          : Image.asset(
              menu.imageName,
              width: 20,
            ),
      title: Text(
        menu.itemName,
        style: TextStyle(
          fontFamily: poppinsFamily,
          fontWeight: FontWeight.w500,
          fontSize: 14.spMin,
          color: menu.isLogout ? AppColor.color_F50E1C : AppColor.black,
          height: 2.1,
        ),
      ),
      trailing: SvgPicture.asset(Assets.imagesSideForward),
      splashColor: AppColor.black,
      onTap: () => onTapSideMenu(menu),
    );
  }

  Widget mainItem(
    String imageName,
    String title,
    bool giveRightBorder,
  ) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: !giveRightBorder
            ? null
            : const Border(right: BorderSide(color: AppColor.color_D9D9D9)),
      ),
      child: Column(
        children: [
          Image.asset(
            imageName,
            width: 30,
          ),
          Text(
            title,
            style: TextStyle(
              fontFamily: poppinsFamily,
              fontWeight: FontWeight.w500,
              fontSize: 13.spMin,
              height: 1.8,
              color: AppColor.white,
            ),
          )
        ],
      ),
    );
  }

  void onTapSideMenu(SideMenu menu) {
    dashboardCntrl.scaffoldKey.currentState?.closeDrawer();
    switch (menu) {
      case SideMenu.shop:
        Get.toNamed(AppRoutes.shop);
        return;
      case SideMenu.category:
        Get.toNamed(AppRoutes.allCategories);
        return;
      case SideMenu.addresses:
        Get.toNamed(AppRoutes.addresses);

        return;
      case SideMenu.notification:
        Get.toNamed(AppRoutes.notifications);
        return;
      case SideMenu.payments:
        Get.toNamed(AppRoutes.wallet);
        return;
      case SideMenu.share:
      // TODO: Handle this case.
      case SideMenu.settings:
        return;
      case SideMenu.termsPolicies:
        Get.toNamed(AppRoutes.termsPolicies);
        return;
      case SideMenu.helpSupport:
        Get.toNamed(AppRoutes.helpCenter);
        return;
      case SideMenu.logout:
        Get.offAllNamed(AppRoutes.login);
        return;
    }
  }
}
