import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freegi_app/controller/cart_controller.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/routes/app_routes.dart';
import 'package:freegi_app/ui/cart/widgets/cart_item_widget.dart';
import 'package:freegi_app/ui/home/widgets/reviewed_product_item_widget.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/extensions/double_ext.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:freegi_app/widgets/custom_app_bar.dart';
import 'package:freegi_app/widgets/custom_app_button.dart';
import 'package:freegi_app/widgets/old_new_widget.dart';
import 'package:get/get.dart';

class CartScreen extends GetView<CartController> {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Cart',
      ),
      backgroundColor: AppColor.white,
      bottomNavigationBar: Container(
        padding: const EdgeInsets.fromLTRB(25, 20, 15, 15).r,
        decoration: BoxDecoration(
          color: AppColor.color_0EBBB6,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(25),
          ).r,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: RichText(
                text: TextSpan(
                  text: 'TO PAY\n',
                  style: TextStyle(
                      fontFamily: ptSansFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: 13.spMin,
                      color: AppColor.white),
                  children: [
                    TextSpan(
                      text: 'Rs 650',
                      style: TextStyle(
                          fontFamily: ptSansFamily,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.spMin,
                          color: AppColor.white),
                    ),
                  ],
                ),
              ),
            ),
            // Spacer()
            Expanded(
              flex: 5,
              child: CustomAppButton(
                onPressed: () {
                  Get.toNamed(AppRoutes.payment);
                },
                btnColor: AppColor.white,
                labelColor: AppColor.color_0EBBB6,
                labelSize: 14.spMin,
                btnLabel: "Continue to Payment",
                borderRadius: 10,
                fontFamily: ptSansFamily,
              ),
            )
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          15.sliverVerticalSpace,
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => const CartItemWidget(),
                childCount: 5),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 44.h,
              margin: const EdgeInsets.symmetric(horizontal: 15).r,
              decoration: const BoxDecoration(
                color: AppColor.color_E8FFF6,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Add More',
                    style: TextStyle(
                      fontFamily: ptSansFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.spMin,
                      color: AppColor.color_0EBBB6,
                    ),
                  ),
                  5.horizontalSpace,
                  const Icon(
                    Icons.add,
                    size: 18,
                    color: AppColor.color_0EBBB6,
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 20,
              color: AppColor.color_F4F5FA,
              margin: const EdgeInsets.only(top: 15),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 15).r,
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Add any note (optional)",
                    style: TextStyle(
                      fontFamily: ptSansFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.spMin,
                      height: 2,
                      color: AppColor.black,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'write your note...',
                      hintStyle: TextStyle(
                        fontFamily: ptSansFamily,
                        fontSize: 12.spMin,
                        fontWeight: FontWeight.normal,
                        color: AppColor.color_999999,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(15, 5, 15, 10).r,
            sliver: SliverToBoxAdapter(
              child: Text(
                "Before you checkout",
                style: TextStyle(
                  fontFamily: ptSansFamily,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.spMin,
                  color: AppColor.black,
                ),
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
          15.sliverVerticalSpace,
          SliverToBoxAdapter(
            child: GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.coupons);
              },
              child: Container(
                color: AppColor.color_F4F5FA,
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: ClipPath(
                  clipper: MovieTicketBothSidesClipper(),
                  child: Container(
                    height: 100,
                    padding: const EdgeInsets.symmetric(horizontal: 15).r,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: AppColor.white,
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                      leading: SvgPicture.asset(Assets.imagesImageDiscount),
                      title: Text(
                        "Avail Offers & Coupons",
                        style: TextStyle(
                          fontFamily: ptSansFamily,
                          fontSize: 12.spMin,
                          fontWeight: FontWeight.bold,
                          color: AppColor.black,
                        ),
                      ),
                      subtitle: Text(
                        "Avail offers and coupons on your order",
                        style: TextStyle(
                          fontFamily: ptSansFamily,
                          fontSize: 11.spMin,
                          fontWeight: FontWeight.bold,
                          color: AppColor.color_999999,
                        ),
                      ),
                      trailing: SvgPicture.asset(Assets.imagesSideForward),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15).r,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      10.verticalSpace,
                      Text(
                        "Make a Purchase Over ₹2500 and Enjoy a Free Gift with Your Next Order!",
                        style: TextStyle(
                          fontFamily: ptSansFamily,
                          fontSize: 14.spMin,
                          fontWeight: FontWeight.bold,
                          color: AppColor.black,
                        ),
                      ),

                      ///TODO
                      Slider(
                        max: 1,
                        min: 0,
                        value: 0.5,
                        allowedInteraction: SliderInteraction.slideThumb,
                        onChanged: (value) {},
                      ),

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
                    ],
                  ),
                ),
                Container(
                  height: 6,
                  color: AppColor.color_F4F5FA,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15).r,
                  child: Column(
                    children: [
                      3.verticalSpace,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Payable Amount",
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
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15).r,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: SvgPicture.asset(Assets.imagesHome),
                        title: RichText(
                          text: TextSpan(
                              text: "Delivering to ",
                              style: TextStyle(
                                fontFamily: ptSansFamily,
                                fontWeight: FontWeight.bold,
                                fontSize: 10.spMin,
                                color: AppColor.color_999999,
                              ),
                              children: [
                                TextSpan(
                                  text: "Home 2",
                                  style: TextStyle(
                                    fontFamily: ptSansFamily,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.spMin,
                                    color: AppColor.color_0EBBB6,
                                  ),
                                )
                              ]),
                        ),
                        subtitle: Text(
                          "3rd Floor, WZ Block, Vikaspuri New Delhi",
                          maxLines: 1,
                          style: TextStyle(
                              fontFamily: ptSansFamily,
                              fontWeight: FontWeight.bold,
                              fontSize: 11.spMin,
                              color: AppColor.color_555555,
                              overflow: TextOverflow.ellipsis),
                        ),
                        trailing: Text(
                          "Change",
                          style: TextStyle(
                            fontFamily: ptSansFamily,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.spMin,
                            color: AppColor.color_0EBBB6,
                          ),
                        ),
                      ),
                      10.verticalSpace,
                      Text(
                        "Add delivery instruction (optional)",
                        style: TextStyle(
                          fontFamily: ptSansFamily,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.spMin,
                          color: AppColor.black,
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'write your note...',
                          hintStyle: TextStyle(
                            fontFamily: ptSansFamily,
                            fontWeight: FontWeight.normal,
                            fontSize: 12.spMin,
                            color: AppColor.color_999999,
                          ),
                        ),
                      ),
                      10.verticalSpace,
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
