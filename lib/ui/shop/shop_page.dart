import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:freegi_app/controller/shop_controller.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/routes/app_routes.dart';
import 'package:freegi_app/ui/home/widgets/recent_cart_item_widget.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:freegi_app/widgets/custom_app_bar.dart';
import 'package:get/get.dart';

class ShopPage extends GetView<ShopController> {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: CustomAppBar(
        title: 'Shop',
        actions: [
          GestureDetector(
            onTap: () {
              openBottomSheet();
            },
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset(
                Assets.imagesFilter,
                width: 20,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(AppRoutes.search);
            },
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset(
                Assets.imagesSearch,
                width: 20,
                color: AppColor.black,
              ),
            ),
          ),
          10.horizontalSpace,
        ],
      ),
      body: Column(
        children: [
          // 15.verticalSpace,
          Container(
            height: 45,
            alignment: Alignment.center,
            // color: AppColor.black,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 10).r,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                bool isSelected = false;
                final itemCategory = controller.itemCategories[index];
                return StatefulBuilder(
                  builder: (context, setState) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          isSelected = !isSelected;
                        });
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10).r,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: isSelected
                                    ? AppColor.color_FBB13C
                                    : AppColor.color_B2B2B2,
                              ),
                              color: isSelected ? AppColor.color_FBB13C : null,
                              borderRadius: BorderRadius.circular(15).r,
                            ),
                            child: Text(
                              itemCategory,
                              style: TextStyle(
                                fontFamily: poppinsFamily,
                                fontWeight: FontWeight.normal,
                                fontSize: 14.spMin,
                                color: isSelected
                                    ? AppColor.white
                                    : AppColor.black,
                                // height: 0
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              itemCount: controller.itemCategories.length,
              separatorBuilder: (context, index) => 6.horizontalSpace,
            ),
          ),
          Flexible(
            child: AlignedGridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 30).r,
              itemBuilder: (context, index) => const RecentCartItemWidget(),
              itemCount: 5,
              crossAxisSpacing: 10,
              mainAxisSpacing: 20,
            ),
          ),
        ],
      ),
    );
  }

  void openBottomSheet() {
    Get.bottomSheet(
      Container(
        padding: const EdgeInsets.fromLTRB(15, 25, 30, 35).r,
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(25),
          ).r,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Sort By",
              style: TextStyle(
                fontFamily: poppinsFamily,
                fontWeight: FontWeight.w600,
                fontSize: 20.spMin,
                color: AppColor.black,
              ),
            ),
            10.verticalSpace,
            ...List.generate(
              controller.allFilterTypes.length,
              (index) {
                final filter = controller.allFilterTypes[index];
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  onTap: () {
                    controller.selectedFilterType(filter);
                    navigator?.pop();
                  },
                  visualDensity: const VisualDensity(
                      vertical: VisualDensity.minimumDensity),
                  title: Text(
                    filter.typeName,
                    style: TextStyle(
                      fontFamily: poppinsFamily,
                      fontWeight: FontWeight.normal,
                      fontSize: 18.spMin,
                      color: AppColor.black,
                    ),
                  ),
                  trailing: filter == controller.selectedFilterType.value
                      ? Image.asset(
                          Assets.imagesSelectedFilter,
                          width: 20,
                        )
                      : null,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
