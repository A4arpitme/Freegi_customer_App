import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freegi_app/controller/dashboard_controller.dart';
import 'package:freegi_app/controller/home_controller.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/routes/app_routes.dart';
import 'package:freegi_app/ui/home/widgets/product_category_item_widget.dart';
import 'package:freegi_app/ui/home/widgets/product_item_list_small.dart';
import 'package:freegi_app/ui/home/widgets/recent_cart_item_widget.dart';
import 'package:freegi_app/ui/home/widgets/reviewed_product_item_widget.dart';
import 'package:freegi_app/ui/sidemenu/side_menu_page.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:freegi_app/widgets/view_all_widget.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    AppColor.color_0EBBB6,
                    // AppColor.color_0EBBB6,
                    AppColor.white,
                    AppColor.white,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.1, .7, .8]),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: AppColor.transparent,
          appBar: AppBar(
            leadingWidth: 40,
            backgroundColor: AppColor.transparent,
            leading: GestureDetector(
              onTap: () {
                Get.find<DashboardController>()
                    .scaffoldKey
                    .currentState
                    ?.openDrawer();
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: SvgPicture.asset(
                  Assets.imagesMenu,
                  width: 25,
                ),
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Hey! Vikas",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.spMin,
                    color: AppColor.white,
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_rounded,
                      color: AppColor.white,
                      size: 15,
                    ),
                    3.horizontalSpace,
                    Flexible(
                        child: Text(
                      'Home 2 - 6391 Elgin St. Ahmedabad',
                      style: TextStyle(
                        fontSize: 13.spMin,
                        fontWeight: FontWeight.w600,
                        fontFamily: poppinsFamily,
                        color: AppColor.white,
                      ),
                    ))
                  ],
                )
              ],
            ),
            actions: [
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.search);
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 5, left: 5),
                  child: Image.asset(
                    Assets.imagesSearch,
                    color: AppColor.white,
                    width: 30,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.cart);
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 10).r,
                  child: const Icon(
                    Icons.shopping_cart_outlined,
                    size: 30,
                    color: AppColor.white,
                  ),
                ),
              )
            ],
          ),
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 200,
                  child: PageView.builder(
                    itemBuilder: (context, index) =>
                        Image.asset(Assets.imagesDemoBanner),
                    itemCount: 3,
                  ),
                ),
              ),

              ///Popular Categories
              SliverToBoxAdapter(
                child: ViewAllWidget(
                  title: "Popular Categories",
                  viewAllOnTap: () {
                    Get.toNamed(AppRoutes.allCategories);
                  },
                ),
              ),
              SliverAlignedGrid.count(
                itemBuilder: (context, index) =>
                    const ProductCategoryItemWidget(),
                crossAxisCount: 3,
                mainAxisSpacing: 25,
                itemCount: 6,
              ),

              ///Deals of the Day
              SliverPadding(
                padding: const EdgeInsets.only(
                  top: 15,
                  bottom: 10,
                ).r,
                sliver: SliverToBoxAdapter(
                  child: ViewAllWidget(
                    title: "Deals of the Day",
                    viewAllOnTap: () {},
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 100.h,
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return const ProductItemSmallWidget();
                    },
                    separatorBuilder: (context, index) {
                      return 10.horizontalSpace;
                    },
                    itemCount: 20,
                    clipBehavior: Clip.none,
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 15,
                      top: 0,
                    ).r,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),

              ///Second Banner
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 230,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 30, 10, 15).r,
                    child: PageView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) => Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned.fill(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8).r,
                              child: Image.asset(
                                Assets.imagesSecondBanner,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: BackdropFilter(
                              filter:
                                  ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: AppColor.white.withOpacity(0.15),
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: AppColor.white.withOpacity(0.7),
                              shape: BoxShape.circle,
                            ),
                            child: SvgPicture.asset(
                              Assets.imagesPlayBtn,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              ///Featured Items
              SliverPadding(
                padding: const EdgeInsets.only(
                  top: 15,
                  bottom: 10,
                ).r,
                sliver: SliverToBoxAdapter(
                  child: ViewAllWidget(
                    title: "Featured Items",
                    viewAllOnTap: () {},
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 100.h,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return const ProductItemSmallWidget();
                    },
                    itemCount: 20,
                    clipBehavior: Clip.none,
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 15,
                      top: 0,
                    ).r,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),

              ///Most Reviewed Items
              SliverPadding(
                padding: const EdgeInsets.only(
                  top: 15,
                  bottom: 10,
                ).r,
                sliver: SliverToBoxAdapter(
                  child: ViewAllWidget(
                    title: "Most Reviewed Items",
                    viewAllOnTap: () {},
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 235.h,
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return const ReviewedProductItemWidget();
                    },
                    separatorBuilder: (context, index) {
                      return 10.horizontalSpace;
                    },
                    itemCount: 20,
                    clipBehavior: Clip.none,
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 15,
                      top: 0,
                    ).r,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),

              ///Recent Cart Items
              SliverPadding(
                padding: const EdgeInsets.only(
                  top: 25,
                  bottom: 10,
                ).r,
                sliver: SliverToBoxAdapter(
                  child: ViewAllWidget(
                    title: "Recent Cart Items",
                    viewAllOnTap: () {},
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.only(left: 10, right: 10).r,
                sliver: SliverAlignedGrid(
                  itemBuilder: (context, index) => const RecentCartItemWidget(),
                  gridDelegate:
                      const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  itemCount: 5,
                ),
              ),

              SliverToBoxAdapter(
                child: 15.verticalSpace,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
