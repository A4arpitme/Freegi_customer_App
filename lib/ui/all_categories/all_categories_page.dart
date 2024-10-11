import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:freegi_app/controller/all_categories_controller.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:freegi_app/widgets/custom_app_bar.dart';
import 'package:get/get.dart';

class AllCategoriesPage extends GetView<AllCategoriesController> {
  const AllCategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: const CustomAppBar(title: 'All Categories'),
      body: AlignedGridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 20,
        padding: const EdgeInsets.fromLTRB(10,15,10,25).r,
        itemCount: 15,
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.fromLTRB(8, 5, 8, 20).r,
          decoration: BoxDecoration(
            color: AppColor.color_E7FFD2,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(18)).r,
          ),
          child: Column(
            children: [
              Image.asset(Assets.imagesDemoPopularCategory),
              8.verticalSpace,
              Text(
                "Fruits & Vegetable",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: urbanistFamily,
                  fontWeight: FontWeight.w600,
                  fontSize: 13.spMin,
                  color: AppColor.black,
                ),
              ),
              5.verticalSpace,
              Text(
                "Apples, Banana, Mango, Green Leafy,Leafy",
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: urbanistFamily,
                  fontWeight: FontWeight.w500,
                  fontSize: 10.spMin,
                  color: AppColor.black,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
