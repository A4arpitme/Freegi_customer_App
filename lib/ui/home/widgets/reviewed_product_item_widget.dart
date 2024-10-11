import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freegi_app/routes/app_routes.dart';
import 'package:freegi_app/ui/home/widgets/product_image_widget.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:freegi_app/widgets/add_product_widget.dart';
import 'package:freegi_app/widgets/discount_text_widget.dart';
import 'package:freegi_app/widgets/fav_unfav_widget.dart';
import 'package:freegi_app/widgets/old_new_widget.dart';
import 'package:freegi_app/widgets/product_container_widget.dart';
import 'package:freegi_app/widgets/rating_widget.dart';
import 'package:get/get.dart';

class ReviewedProductItemWidget extends StatelessWidget {
  const ReviewedProductItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed("${AppRoutes.productDetails}/product-id");
      },
      child: ProductContainerWidget(
        width: 150.w,
        padding: const EdgeInsets.all(10).r,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                ProductItemWidget(
                  imageHeight: 100.h,
                  height: 130.h,
                  // padding: ,
                ),
                const Positioned(
                  left: 4,
                  top: 4,
                  child: DiscountTextWidget(discountValue: '20'),
                ),
                Positioned(
                  right: 4,
                  top: 4,
                  child: Container(
                    padding: const EdgeInsets.all(3).r,
                    decoration: const BoxDecoration(
                      color: AppColor.white,
                      shape: BoxShape.circle,
                    ),
                    child: const FavUnfavWidget(),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                5.verticalSpace,
                const Row(
                  children: [
                    RatingWidget(rating: '4.5'),
                  ],
                ),
                3.verticalSpace,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        'Nescafe  Classic Coffee Powder',
                        style: TextStyle(
                            fontSize: 10.spMin,
                            fontFamily: poppinsFamily,
                            height: 1.5,
                            fontWeight: FontWeight.w500,
                            color: AppColor.color_333333),
                      ),
                    ),
                    const AddProductWidget()
                  ],
                ),
                const Divider(
                  color: AppColor.color_B2B2B2,
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '25g',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 10.spMin,
                        height: 1.5,
                        fontFamily: poppinsFamily,
                      ),
                    ),
                    const OldNewWidget(oldPrice: '99', newPrice: "79")
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
