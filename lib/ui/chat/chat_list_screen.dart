import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freegi_app/controller/chat_list_controller.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/routes/app_routes.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:freegi_app/widgets/custom_app_bar.dart';
import 'package:get/get.dart';

class ChatListScreen extends GetView<ChatListController> {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: const CustomAppBar(
        title: "Chats",
        showBackButton: false,
      ),
      body: ListView.separated(
        itemCount: 5,
        separatorBuilder: (context, index) => 15.verticalSpace,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () => Get.toNamed(AppRoutes.chat),
            leading: Container(
              height: 50,
              width: 50,
              padding: const EdgeInsets.all(2).r,
              decoration: BoxDecoration(
                  color: AppColor.color_E9EDF0,
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColor.color_01B8B3)),
              child: SvgPicture.asset(
                Assets.imagesDefaultProfilePic,
                // height: 84,
              ),
            ),
            title: Text(
              "Melodie Allison",
              style: TextStyle(
                fontFamily: poppinsFamily,
                fontWeight: FontWeight.w600,
                fontSize: 14.spMin,
                color: AppColor.black,
              ),
            ),
            subtitle: Text(
              "Hii there!!",
              style: TextStyle(
                fontFamily: poppinsFamily,
                fontWeight: FontWeight.w600,
                fontSize: 10.spMin,
                color: AppColor.color_444444,
              ),
            ),
          );
        },
      ),
    );
  }
}
