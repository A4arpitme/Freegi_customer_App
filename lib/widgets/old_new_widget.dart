import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';

class OldNewWidget extends StatelessWidget {
  const OldNewWidget({
    super.key,
    required this.oldPrice,
    required this.newPrice,
    this.oldPriceStyle,
    this.newPriceStyle,
    this.usePriceLogo = true,
    this.useColumn = false,
  });

  final String oldPrice, newPrice;
  final TextStyle? oldPriceStyle, newPriceStyle;
  final bool usePriceLogo, useColumn;

  @override
  Widget build(BuildContext context) {
    return useColumn
        ? Column(
            children: [
              newPriceTextWidget,
              // 5.verticalSpace,
              oldPriceTextWidget,
            ],
          )
        : Row(
            children: [
              oldPriceTextWidget,
              5.horizontalSpace,
              newPriceTextWidget,
            ],
          );
  }

  Widget get oldPriceTextWidget => Text(
        usePriceLogo ? '₹$oldPrice' : oldPrice,
        style: oldPriceStyle ??
            TextStyle(
              fontSize: 12.spMin,
              fontWeight: FontWeight.normal,
              color: AppColor.color_6D6D6D,
              fontFamily: poppinsFamily,
              height: 1.8,
              decoration: TextDecoration.lineThrough,
            ),
      );

  Widget get newPriceTextWidget => Text(
        usePriceLogo ? '₹$newPrice' : newPrice,
        style: newPriceStyle ??
            TextStyle(
              fontSize: 12.spMin,
              fontWeight: FontWeight.normal,
              color: AppColor.black,
              fontFamily: poppinsFamily,
              height: 1.8,
            ),
      );
}
