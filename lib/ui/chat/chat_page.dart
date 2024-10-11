import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freegi_app/controller/chat_controller.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/ui/chat/widgets/chat_item_widget.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:get/get.dart';

class ChatPage extends GetView<ChatController> {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: AppColor.white,
      ),
      body: Column(
        children: [
          10.verticalSpace,
          Container(
            padding: const EdgeInsets.only(bottom: 10).r,
            decoration: const BoxDecoration(border: Border(bottom: BorderSide())),
            child: Row(
              children: [
                Flexible(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: Get.back,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15).r,
                          child: Image.asset(
                            Assets.imagesBack,
                            color: AppColor.black,
                            width: 26,
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            padding: const EdgeInsets.all(2).r,
                            decoration: BoxDecoration(
                                color: AppColor.color_E9EDF0,
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: AppColor.color_01B8B3)),
                            child: SvgPicture.asset(
                              Assets.imagesDefaultProfilePic,
                              // height: 84,
                            ),
                          ),
                          Positioned(
                            right: 3,
                            top: 3,
                            child: Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                color: AppColor.color_6CE124,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ],
                      ),
                      10.horizontalSpace,
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Melodie Allison",
                              style: TextStyle(
                                fontFamily: poppinsFamily,
                                fontWeight: FontWeight.normal,
                                fontSize: 14.spMin,
                                color: AppColor.black,
                              ),
                            ),
                            Text(
                              "Online",
                              style: TextStyle(
                                fontFamily: poppinsFamily,
                                fontWeight: FontWeight.normal,
                                fontSize: 10.spMin,
                                color: AppColor.black,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SvgPicture.asset(
                        Assets.imagesIcCall,
                        height: 30,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.more_vert,
                        size: 30,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Flexible(
            child: Align(
              alignment: Alignment.topCenter,
              child: Obx(() {
                return ListView.builder(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 35).r,
                  itemCount: controller.chatList.length,
                  reverse: true,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ChatItemWidget(
                      isSent: true,
                      msg: controller.chatList[index],
                    );
                  },
                );
              }),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ).r,
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    // height: 40.h,
                    constraints: BoxConstraints(minHeight: 40.h),
                    // margin: const EdgeInsets.symmetric(horizontal: 15).r,
                    decoration: BoxDecoration(
                      color: AppColor.color_F2F3F2,
                      borderRadius: BorderRadius.circular(15).r,
                    ),
                    child: Center(
                      child: TextField(
                        minLines: 1,
                        maxLines: 5,
                        controller: controller.msgCntrl,
                        decoration: InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                            prefixIconConstraints:
                                const BoxConstraints(maxWidth: 40),
                            suffixIconConstraints:
                                const BoxConstraints(maxWidth: 40),
                            prefixIcon: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                8.horizontalSpace,
                                SvgPicture.asset(
                                  Assets.imagesIcAttach,
                                  height: 20,
                                ),
                                8.horizontalSpace,
                              ],
                            ),
                            suffixIcon: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                8.horizontalSpace,
                                SvgPicture.asset(
                                  Assets.imagesIcEmoji,
                                  height: 20,
                                ),
                                8.horizontalSpace,
                              ],
                            )),
                      ),
                    ),
                  ),
                ),
                3.horizontalSpace,
                GestureDetector(
                  onTap: () {
                    controller.chatList.insert(0,controller.msgCntrl.text.trim());
                    controller.msgCntrl.clear();
                  },
                  child: SvgPicture.asset(Assets.imagesIcSend),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
