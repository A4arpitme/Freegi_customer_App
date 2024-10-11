import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';

class WalletItemWidget extends StatelessWidget {
  const WalletItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      visualDensity: const VisualDensity(
        horizontal: VisualDensity.minimumDensity,
        vertical: VisualDensity.minimumDensity,
      ),
      leading: Container(
        padding: const EdgeInsets.all(10).r,
        decoration: const BoxDecoration(
            color: AppColor.color_F5F6FA, shape: BoxShape.circle),
        child: SvgPicture.asset(
          Assets.imagesIcWallet,
          height: 20,
          colorFilter: const ColorFilter.mode(
            AppColor.black,
            BlendMode.srcIn,
          ),
        ),
      ),
      title: Text(
        "Mondy Added to Wallet",
        style: TextStyle(
          fontFamily: ptSansFamily,
          fontWeight: FontWeight.bold,
          fontSize: 12.spMin,
          color: AppColor.black,
        ),
      ),
      subtitle: Text(
        "24 Dec | 7:30 PM",
        style: TextStyle(
          fontFamily: ptSansFamily,
          fontWeight: FontWeight.normal,
          fontSize: 11.spMin,
          color: AppColor.color_999999,
        ),
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "+ Rs 100",
            style: TextStyle(
              fontFamily: ptSansFamily,
              fontWeight: FontWeight.bold,
              fontSize: 14.spMin,
              color: AppColor.color_39B54A,
            ),
          ),
          Text(
            "Balance Rs 1560",
            style: TextStyle(
              fontFamily: ptSansFamily,
              fontWeight: FontWeight.bold,
              fontSize: 11.spMin,
              color: AppColor.color_999999,
            ),
          )
        ],
      ),
    );
  }
}
