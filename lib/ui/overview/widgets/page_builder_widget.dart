import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freegi_app/controller/overview_controller.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';

class PageBuilderWidget extends StatelessWidget {
  final OverviewModel overview;
  final bool isLast;

  const PageBuilderWidget({super.key, required this.overview, required this.isLast});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 1.sh * 0.45,
          alignment:Alignment.bottomCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Container(
                  alignment:Alignment.bottomCenter,
                  child: Image.asset(
                    overview.imageName,
                  ),
                ),
              ),
              if(isLast)
                30.verticalSpace,

            ],
          ),
        ),
        20.verticalSpace,
        Text(
          overview.headerText,
          style: TextStyle(
            color: AppColor.color_03908C,
            fontFamily: ptSansFamily,
            fontSize: 14.spMin,
            fontWeight: FontWeight.bold,
          ),
        ),
        30.verticalSpace,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: overview.subHeaderText,
              style: TextStyle(
                color: AppColor.color_444444,
                fontFamily: ptSansFamily,
                fontSize: 14.spMin,
                height: 1.21,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        )
      ],
    );
  }
}
