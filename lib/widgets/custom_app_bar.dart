import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../generated/assets.dart';
import '../utils/colors.dart';
import '../utils/text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.actions,
    this.backgroundColor = AppColor.white,
  });

  final String title;
  final Color backgroundColor;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
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
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20.spMin,
          fontFamily: ptSansFamily,
          fontWeight: FontWeight.bold,
          color: AppColor.black,
        ),
      ),
      centerTitle: true,
      leadingWidth: 65,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
