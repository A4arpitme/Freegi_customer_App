import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freegi_app/controller/overview_controller.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/ui/overview/widgets/page_builder_widget.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/utils.dart';
import 'package:freegi_app/widgets/overview_arc_painter.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OverviewPage extends GetView<OverviewController> {
  const OverviewPage({super.key});

  // @override
  // final controller = OverviewController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        toolbarOpacity: 0,
        backgroundColor: AppColor.transparent,
        systemOverlayStyle: Utils.dark,
      ),
      body: Column(
        children: [
          25.verticalSpace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: controller.moveToSignUpPage,
                child: Text(
                  "SKIP >",
                  style: TextStyle(
                    fontSize: 14.spMin,
                    fontFamily: 'PTSans',
                    color: AppColor.color_6D6D6D,
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            child: PageView.builder(
              controller: controller.pageController,
              pageSnapping: true,
              onPageChanged: controller.onPageChanged,
              itemBuilder: (context, index) {
                return PageBuilderWidget(
                  overview: controller.overviews[index],
                  isLast: index == 2,
                );
              },
              itemCount: 3,
            ),
          ),
          SmoothPageIndicator(
            controller: controller.pageController,
            effect: const SlideEffect(
              dotHeight: 8,
              dotWidth: 8,
              spacing: 8,
              type: SlideType.slideUnder,
              activeDotColor: AppColor.color_0EBBB6,
              dotColor: AppColor.greyColor,
            ),
            count: 3,
          ),
          25.verticalSpace,
          SizedBox(
            height: 60,
            width: 60,
            child: Obx(
              () {
                return GestureDetector(
                  onTap: controller.changePage,
                  child: CustomPaint(
                    painter: ArcPainter(
                      totalValue: 3,
                      currentValue: controller.currentPage.value + 1,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        controller.changeIcon
                            ? Image.asset(
                                Assets.imagesTick,
                                width: 30,
                              )
                            : RotatedBox(
                                quarterTurns: 2,
                                child: Image.asset(
                                  Assets.imagesBack,
                                  width: 30,
                                ),
                              ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          20.verticalSpace,
          // Expanded(child: SizedBox.shrink()),
          // Spacer(),
        ],
      ),
    );
  }
}
