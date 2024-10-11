import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freegi_app/controller/terms_policy_controller.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/ui/web_widget/app_web_page.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:freegi_app/widgets/custom_app_bar.dart';
import 'package:get/get.dart';

class TermsPoliciesPage extends GetView<TermsPolicyController> {
  const TermsPoliciesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: const CustomAppBar(title: 'Terms & Policies'),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 15).r,
        itemBuilder: (context, index) {
          final type = controller.termsPoliciesTypes[index];
          final isLast = controller.termsPoliciesTypes.length - 1;
          return Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: AppColor.color_E2E2E2,
                  width: index == 0 ? 1 : 0.5,
                ),
                bottom: BorderSide(
                  color: AppColor.color_E2E2E2,
                  width: index == isLast ? 1 : 0.5,
                ),
              ),
            ),
            child: ListTile(
              // visualDensity: VisualDensity(horizontal: ),
              onTap: () {
                Get.to(
                  () => AppWebPage(
                    "https://www.google.com/",
                    title: type.typeName,
                  ),
                );
              },
              contentPadding: EdgeInsets.zero,
              title: Text(
                type.typeName,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: poppinsFamily,
                  fontSize: 13.spMin,
                  color: AppColor.black,
                ),
              ),
              trailing: SvgPicture.asset(Assets.imagesSideForward),
            ),
          );
        },
        itemCount: controller.termsPoliciesTypes.length,
      ),
    );
  }
}
