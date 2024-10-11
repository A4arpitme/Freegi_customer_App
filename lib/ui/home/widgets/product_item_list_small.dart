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

class ProductItemSmallWidget extends StatelessWidget {
  const ProductItemSmallWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed("${AppRoutes.productDetails}/product-id");
      },
      child : ProductContainerWidget(
        width: 230.w,
        padding: const EdgeInsets.all(10).r,
        margin: const EdgeInsets.only(right: 10).r,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Stack(
              children: [
                ProductItemWidget(
                  width: 93,
                  height: 80,
                  imageWidth: 56,
                  imageHeight: 64,
                ),
                Positioned(
                  top: 3,
                  left: 3,
                  child: DiscountTextWidget(
                    discountValue: '20',
                  ),
                )
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 10
                  // top: 10,
                  // bottom: 10,
                  // right: 10,
                ).r,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            "Nescafe  Classic Coffee Powder",
                            maxLines: 2,
                            style: TextStyle(
                              fontFamily: poppinsFamily,
                              fontWeight: FontWeight.normal,
                              fontSize: 10.spMin,
                              color: AppColor.color_333333,
                            ),
                          ),
                        ),
                        const FavUnfavWidget()
                      ],
                    ),
                    8.verticalSpace,
                    Row(
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
                        10.horizontalSpace,
                        const RatingWidget(
                          rating: '4.5',
                        )
                      ],
                    ),
                    const Row(
                      children: [
                        OldNewWidget(
                          newPrice: '79',
                          oldPrice: '99',
                        ),
                        Spacer(),
                        AddProductWidget()
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
