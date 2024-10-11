import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freegi_app/controller/product_details_controller.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:freegi_app/widgets/custom_app_button.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

///TODO are:-
///fav/unfav
///showmore-showless
///increment counter
class ProductDetailsPage extends GetView<ProductDetailsController> {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: GestureDetector(
              onTap: Get.back,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset(
                  Assets.imagesBack,
                  color: AppColor.black,
                ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(20).r,
                child: SvgPicture.asset(Assets.imagesShare),
              )
            ],
            leadingWidth: 65,
            expandedHeight: 300.h,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  color: AppColor.color_F2F3F2,
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(22),
                  ).r,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      height: 200.h,
                      child: PageView.builder(
                        controller: controller.pageController,
                        itemCount: 3,
                        itemBuilder: (context, index) => Image.asset(
                          Assets.imagesDemoProduct,
                          height: 200,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 25.h,
                      child: SmoothPageIndicator(
                        controller: controller.pageController,
                        effect: const ExpandingDotsEffect(
                          dotHeight: 3,
                          dotWidth: 3,
                          spacing: 3,
                          expansionFactor: 7,
                          activeDotColor: AppColor.color_0EBBB6,
                          dotColor: AppColor.greyColor,
                        ),
                        count: 3,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 20).r,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Naturel Red Apple",
                              style: TextStyle(
                                  fontFamily: poppinsFamily,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 21.spMin,
                                  color: AppColor.color_181725),
                            ),
                            Text("1kg, Price")
                          ],
                        ),
                      ),
                      SvgPicture.asset(Assets.imagesIcLike)
                    ],
                  ),
                  15.verticalSpace,
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            const Icon(Icons.remove),
                            10.horizontalSpace,
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 13,
                                vertical: 8,
                              ).r,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15).r,
                                border: Border.all(
                                  color: AppColor.color_E2E2E2,
                                ),
                              ),
                              child: Text("1"),
                            ),
                            10.horizontalSpace,
                            const Icon(Icons.add)
                          ],
                        ),
                      ),
                      Text(
                        "Rs 40",
                        style: TextStyle(
                          fontFamily: poppinsFamily,
                          fontWeight: FontWeight.w600,
                          fontSize: 21.spMin,
                          color: AppColor.color_181725,
                        ),
                      )
                    ],
                  ),
                  30.verticalSpace,
                  Container(
                    padding: const EdgeInsets.only(top: 8).r,
                    decoration: const BoxDecoration(
                        border: Border(
                            top: BorderSide(color: AppColor.color_E2E2E2))),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Product Detail",
                                style: TextStyle(
                                  fontFamily: poppinsFamily,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15.spMin,
                                  color: AppColor.color_181725,
                                ),
                              ),
                            ),
                            SvgPicture.asset(Assets.imagesForwardBold)
                          ],
                        ),
                        Text(
                          "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
                          style: TextStyle(
                              fontFamily: poppinsFamily,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.spMin,
                              color: AppColor.color_7C7C7C),
                        )
                      ],
                    ),
                  ),
                  15.verticalSpace,
                  Container(
                    padding: const EdgeInsets.only(top: 8).r,
                    decoration: const BoxDecoration(
                        border: Border(
                            top: BorderSide(color: AppColor.color_E2E2E2))),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Nutritions",
                            style: TextStyle(
                              fontFamily: poppinsFamily,
                              fontWeight: FontWeight.w500,
                              fontSize: 15.spMin,
                              color: AppColor.color_181725,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5).r,
                          decoration: BoxDecoration(
                              color: AppColor.color_EBEBEB,
                              borderRadius: BorderRadius.circular(5).r),
                          child: Text(
                            "100gr",
                            style: TextStyle(
                              fontFamily: poppinsFamily,
                              fontWeight: FontWeight.w600,
                              fontSize: 8.spMin,
                              height: 1.2,
                              color: AppColor.color_7C7C7C,
                            ),
                          ),
                        ),
                        15.horizontalSpace,
                        SvgPicture.asset(Assets.imagesForwardBold)
                      ],
                    ),
                  ),
                  15.verticalSpace,
                  Container(
                    padding: const EdgeInsets.only(top: 8).r,
                    decoration: const BoxDecoration(
                        border: Border(
                            top: BorderSide(color: AppColor.color_E2E2E2))),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Review",
                            style: TextStyle(
                              fontFamily: poppinsFamily,
                              fontWeight: FontWeight.w500,
                              fontSize: 15.spMin,
                              color: AppColor.color_181725,
                            ),
                          ),
                        ),
                        PannableRatingBar(
                          rate: 5,
                          items: List.generate(
                            5,
                            (index) => RatingWidget(
                              selectedColor: AppColor.color_F3603F,
                              unSelectedColor: AppColor.color_999999,
                              child: SvgPicture.asset(
                                Assets.imagesFilledStar,
                                width: 15,
                              ),
                            ),
                          ),
                          onChanged: (value) {
                            // controller.ratingValue(value);
                          },
                        ),
                        15.horizontalSpace,
                        SvgPicture.asset(Assets.imagesForwardBold)
                      ],
                    ),
                  ),
                  15.verticalSpace,
                  CustomAppButton(
                    onPressed: () {},
                    btnHeight: 60.h,
                    btnLabel: 'Add To Basket',
                    labelSize: 16.spMin,
                    borderRadius: 17,
                  )
                ],
              ),
            ),
          )
          // SliverToBoxAdapter(child: Container(height: 10000,),)
        ],
      ),
    );
  }
}
