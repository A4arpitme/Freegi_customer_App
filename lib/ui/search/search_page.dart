import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freegi_app/controller/search_controller.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/ui/home/widgets/recent_cart_item_widget.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/widgets/custom_app_bar.dart';
import 'package:get/get.dart';

class SearchPage extends GetView<SearchGetController> {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: const CustomAppBar(title: 'Search'),
      body: Column(
        children: [
          20.verticalSpace,
          Container(
            height: 40.h,
            margin: const EdgeInsets.symmetric(horizontal: 15).r,
            decoration: BoxDecoration(
              color: AppColor.color_F2F3F2,
              borderRadius: BorderRadius.circular(15).r,
            ),
            child: Center(
              child: TextField(
                controller: controller.searchController,
                decoration: InputDecoration(
                    isDense: true,
                    border: InputBorder.none,
                    prefixIconConstraints: const BoxConstraints(maxWidth: 40),
                    suffixIconConstraints: const BoxConstraints(maxWidth: 40),
                    prefixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        8.horizontalSpace,
                        SvgPicture.asset(
                          Assets.imagesIcSearch,
                          height: 20,
                        ),
                        8.horizontalSpace,
                      ],
                    ),
                    suffixIcon: GestureDetector(
                      onTap: controller.searchController.clear,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          8.horizontalSpace,
                          SvgPicture.asset(
                            Assets.imagesIcClear,
                            height: 20,
                          ),
                          8.horizontalSpace,
                        ],
                      ),
                    )),
              ),
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
          )
        ],
      ),
    );
  }
}
