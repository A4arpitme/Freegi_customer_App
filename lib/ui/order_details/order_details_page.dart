import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freegi_app/controller/order_details_controller.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/routes/app_routes.dart';
import 'package:freegi_app/ui/order_details/widgets/order_details_product_item_widget.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:freegi_app/widgets/custom_app_bar.dart';
import 'package:freegi_app/widgets/custom_app_button.dart';
import 'package:get/get.dart';

import '../../widgets/old_new_widget.dart';

class OrderDetailsPage extends GetView<OrderDetailsController> {
  const OrderDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    String orderId = Get.parameters['orderId'] ?? '';
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: const CustomAppBar(title: 'Order Details'),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 25).r,
        decoration: BoxDecoration(color: AppColor.white, boxShadow: [
          BoxShadow(
              color: AppColor.black.withOpacity(0.05),
              blurRadius: 10,
              // spreadRadius: 1,
              offset: const Offset(0, -5))
        ]),
        child: Row(
          children: [
            Expanded(
              child: CustomAppButton(
                btnHeight: 56.h,
                onPressed: () {},
                btnColor: AppColor.color_B2B2B2,
                btnLabel: "Get Help",
                labelColor: AppColor.black,
                labelSize: 15.spMin,
              ),
            ),
            15.horizontalSpace,
            Expanded(
              child: CustomAppButton(
                btnHeight: 56.h,
                onPressed: () {},
                btnColor: AppColor.color_FBB13C,
                btnLabel: "Track Order",
                labelColor: AppColor.white,
                labelSize: 15.spMin,
                // borderRadius: 100,
              ),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0).r,
              child: Column(
                children: [
                  20.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Order ID #${orderId}",
                        style: TextStyle(
                          fontFamily: poppinsFamily,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.spMin,
                          color: AppColor.black,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10, right: 5).r,
                        decoration: BoxDecoration(
                          color: AppColor.color_FD9419,
                          borderRadius: BorderRadius.circular(5).r,
                        ),
                        child: Text(
                          "Ongoing",
                          style: TextStyle(
                            fontFamily: poppinsFamily,
                            fontSize: 12.spMin,
                            color: AppColor.white,
                            height: 1.8,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                  30.verticalSpace,
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      width: 40,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: AppColor.color_0EBBB6,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        Assets.imagesCartConfirmed,
                      ),
                    ),
                    title: Text(
                      "Order Confirmed",
                      style: TextStyle(
                        fontFamily: poppinsFamily,
                        fontWeight: FontWeight.normal,
                        fontSize: 14.spMin,
                        color: AppColor.black,
                      ),
                    ),
                    subtitle: Text(
                      "29 Dec 2024, 08:00 pm",
                      style: TextStyle(
                        fontFamily: poppinsFamily,
                        fontWeight: FontWeight.normal,
                        fontSize: 11.spMin,
                        color: AppColor.color_999999,
                      ),
                    ),
                  ),
                  // 10.verticalSpace,
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      width: 40,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: AppColor.color_D9D9D9,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        Assets.imagesCartDeliveryTo,
                      ),
                    ),
                    title: Text(
                      "Delivering To",
                      style: TextStyle(
                        fontFamily: poppinsFamily,
                        fontWeight: FontWeight.normal,
                        fontSize: 14.spMin,
                        color: AppColor.black,
                      ),
                    ),
                    subtitle: Text(
                      "3rd Floor, WZ Block, Vikaspuri New Delhi - 110023",
                      style: TextStyle(
                        fontFamily: poppinsFamily,
                        fontWeight: FontWeight.normal,
                        fontSize: 11.spMin,
                        color: AppColor.color_999999,
                      ),
                    ),
                  ),
                  5.verticalSpace,
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  height: 6,
                  color: AppColor.color_F4F5FA,
                ),
                10.verticalSpace,
                Row(
                  children: [
                    const Spacer(
                      flex: 2,
                    ),
                    Expanded(
                      flex: 5,
                      child: CustomAppButton(
                        btnHeight: 30.h,
                        onPressed: () {
                          controller.openCancelDialog();
                        },
                        btnLabel: "Cancel Order",
                        labelSize: 15.spMin,
                      ),
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                  ],
                ),
                10.verticalSpace,
                Container(
                  height: 6,
                  color: AppColor.color_F4F5FA,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10)
                          .r,
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(color: AppColor.color_CECECE),
                      bottom: BorderSide(color: AppColor.color_CECECE),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx(() {
                        return PannableRatingBar(
                          rate: controller.ratingValue.value,
                          items: List.generate(
                            5,
                            (index) => RatingWidget(
                              selectedColor: AppColor.color_FBB13C,
                              unSelectedColor: AppColor.color_999999,
                              child: SvgPicture.asset(
                                Assets.imagesEmptyRating,
                                width: 25,
                              ),
                            ),
                          ),
                          onChanged: (value) {
                            controller.ratingValue(value);
                          },
                        );
                      }),
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 5, 5, 5).r,
                        decoration: BoxDecoration(
                          color: AppColor.color_FBB13C,
                          borderRadius: BorderRadius.circular(5).r,
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.refresh,
                              size: 13,
                              color: AppColor.white,
                            ),
                            2.horizontalSpace,
                            Text(
                              "Reorder",
                              style: TextStyle(
                                fontFamily: poppinsFamily,
                                fontSize: 12.spMin,
                                color: AppColor.white,
                                height: 1.8,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                6.verticalSpace,
                Container(
                  padding: const EdgeInsets.fromLTRB(15.0, 0, 15, 10).r,
                  decoration: const BoxDecoration(
                    border: Border(
                      // top: BorderSide(color: AppColor.color_CECECE),
                      bottom: BorderSide(color: AppColor.color_CECECE),
                    ),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Manage Your Orders',
                          style: TextStyle(
                            fontFamily: poppinsFamily,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.spMin,
                            color: AppColor.black,
                          ),
                        ),
                      ),
                      Text(
                        "Easily request a return or exchange.",
                        style: TextStyle(
                          fontSize: 12.spMin,
                          fontWeight: FontWeight.normal,
                          fontFamily: poppinsFamily,
                          color: AppColor.black,
                        ),
                      ),
                      10.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomAppButton(
                            btnWidth: 100.w,
                            btnHeight: 32.h,
                            btnColor: AppColor.color_E2E2E2,
                            btnBorderColor: AppColor.color_B4B4B4,
                            btnLabel: "Exchange",
                            labelSize: 14.spMin,
                            labelColor: AppColor.color_767676,
                            borderRadius: 5,
                            onPressed: () {
                              Get.toNamed("${AppRoutes.returnExchangeOrder}/Exchange");
                            },
                          ),
                          30.horizontalSpace,
                          CustomAppButton(
                            btnWidth: 100.w,
                            btnHeight: 32.h,
                            btnLabel: "Return",
                            labelSize: 14.spMin,
                            borderRadius: 5,
                            onPressed: () {
                              Get.toNamed("${AppRoutes.returnExchangeOrder}/ReturnOrder");
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15).r,
            sliver: SliverToBoxAdapter(
              child: Text(
                "Product Details",
                style: TextStyle(
                  fontFamily: poppinsFamily,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.spMin,
                  color: AppColor.black,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 2,
              (context, index) {
                return const OrderDetailsProductItemWidget();
              },
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  height: 6,
                  color: AppColor.color_F4F5FA,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15).r,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Payment Details",
                        style: TextStyle(
                          fontFamily: ptSansFamily,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.spMin,
                          color: AppColor.black,
                        ),
                      ),
                      10.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Subtotal",
                            style: TextStyle(
                                fontFamily: ptSansFamily,
                                fontWeight: FontWeight.normal,
                                fontSize: 12.spMin,
                                color: AppColor.black),
                          ),
                          OldNewWidget(
                            oldPrice: "Rs 940",
                            usePriceLogo: false,
                            oldPriceStyle: TextStyle(
                              fontFamily: ptSansFamily,
                              fontSize: 11.spMin,
                              height: 1.4,
                              color: AppColor.color_999999,
                              decoration: TextDecoration.lineThrough,
                            ),
                            newPrice: "Rs 650",
                            newPriceStyle: TextStyle(
                              fontFamily: ptSansFamily,
                              fontSize: 12.spMin,
                              height: 1.5,
                              color: AppColor.black,
                            ),
                          )
                        ],
                      ),
                      6.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Handling Charge",
                            style: TextStyle(
                              fontFamily: ptSansFamily,
                              fontWeight: FontWeight.normal,
                              fontSize: 12.spMin,
                              color: AppColor.black,
                            ),
                          ),
                          OldNewWidget(
                            oldPrice: "Rs 30",
                            usePriceLogo: false,
                            oldPriceStyle: TextStyle(
                              fontFamily: ptSansFamily,
                              fontSize: 12.spMin,
                              height: 1.4,
                              color: AppColor.color_555555,
                              decoration: TextDecoration.lineThrough,
                            ),
                            newPrice: "Rs 15",
                            newPriceStyle: TextStyle(
                              fontFamily: ptSansFamily,
                              fontSize: 12.spMin,
                              height: 1.5,
                              color: AppColor.color_39B54A,
                            ),
                          )
                        ],
                      ),
                      6.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Delivery Charges",
                            style: TextStyle(
                              fontFamily: ptSansFamily,
                              fontWeight: FontWeight.normal,
                              fontSize: 12.spMin,
                              color: AppColor.black,
                            ),
                          ),
                          Text(
                            "Rs 90",
                            style: TextStyle(
                              fontFamily: ptSansFamily,
                              fontWeight: FontWeight.normal,
                              fontSize: 12.spMin,
                              color: AppColor.black,
                            ),
                          ),
                        ],
                      ),
                      6.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: "Coupon",
                              style: TextStyle(
                                fontFamily: ptSansFamily,
                                fontWeight: FontWeight.normal,
                                fontSize: 12.spMin,
                                color: AppColor.black,
                              ),
                              children: [
                                TextSpan(
                                  text: " (Free Shipping)",
                                  style: TextStyle(
                                    fontFamily: ptSansFamily,
                                    fontSize: 11.spMin,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.color_0EBBB6,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Text(
                            "-Rs 90",
                            style: TextStyle(
                              fontFamily: ptSansFamily,
                              fontWeight: FontWeight.normal,
                              fontSize: 12.spMin,
                              color: AppColor.black,
                            ),
                          ),
                        ],
                      ),
                      10.verticalSpace,
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 10).r,
                        decoration: const BoxDecoration(
                            border: Border(
                          top: BorderSide(color: AppColor.color_CECECE),
                          bottom: BorderSide(color: AppColor.color_CECECE),
                          // bottom: BorderSide()
                        )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Paid Amount",
                              style: TextStyle(
                                  fontFamily: ptSansFamily,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.spMin,
                                  height: 1.8,
                                  color: AppColor.black),
                            ),
                            Text(
                              "Rs 650",
                              style: TextStyle(
                                fontFamily: ptSansFamily,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.spMin,
                                height: 1.8,
                                color: AppColor.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      6.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Payment Method",
                            style: TextStyle(
                                fontFamily: ptSansFamily,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.spMin,
                                height: 1.8,
                                color: AppColor.black),
                          ),
                          Text(
                            "G-Pay",
                            style: TextStyle(
                              fontFamily: urbanistFamily,
                              fontWeight: FontWeight.w500,
                              fontSize: 14.spMin,
                              height: 1.8,
                              color: AppColor.color_0EBBB6,
                            ),
                          ),
                        ],
                      ),
                      15.verticalSpace,
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }


}
