import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/utils/text_styles.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        25.verticalSpace,
        const SizedBox(width: double.infinity,),
        Container(
          width: 100,
          height: 100,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage(
                  Assets.imagesAppLogoF,
                ),
                fit: BoxFit.cover),
          ),
        ),
        10.verticalSpace,
        Text(
          'Welcome to ',
          style: TextStyle(
            fontFamily: poppinsFamily,
            fontWeight: FontWeight.bold,
            fontSize: 28.spMin,
          ),
        ),
        5.verticalSpace,
        Image.asset(
          Assets.imagesAppLogo,
          height: 40,
        ),
      ],
    );
  }
}
