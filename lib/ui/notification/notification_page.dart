import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:freegi_app/controller/notification_controller.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:freegi_app/widgets/custom_app_bar.dart';
import 'package:get/get.dart';

class NotificationPage extends GetView<NotificationController> {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: CustomAppBar(title: 'Notification'),
      body: Column(
        children: [
          ListTile(
            title: Text(
              "App Notification",
              style: TextStyle(
                fontFamily: poppinsFamily,
                fontWeight: FontWeight.normal,
                fontSize: 13.spMin,
                color: AppColor.black,
              ),
            ),
            trailing: Obx(() {
              return SizedBox(
                width: 45,
                height: 24,
                child: FlutterSwitch(
                  padding: 1,
                  value: controller.appNotification.value,
                  activeColor: AppColor.color_0EBBB6,
                  inactiveColor: AppColor.color_F4F5FA,
                  onToggle: (value) {
                    controller.appNotification(value);
                  },
                ),
              );
            }),
          ),
          ListTile(
            title: Text(
              "Email Notification",
              style: TextStyle(
                fontFamily: poppinsFamily,
                fontWeight: FontWeight.normal,
                fontSize: 13.spMin,
                color: AppColor.black,
              ),
            ),
            trailing: Obx(() {
              return SizedBox(
                width: 45,
                height: 24,
                child: FlutterSwitch(
                  padding: 1,
                  value: controller.emailNotification.value,
                  activeColor: AppColor.color_0EBBB6,
                  inactiveColor: AppColor.color_F4F5FA,
                  onToggle: (value) {
                    controller.emailNotification(value);
                  },
                ),
              );
            }),
          ),
          ListTile(
            title: Text(
              "SMS Notification",
              style: TextStyle(
                fontFamily: poppinsFamily,
                fontWeight: FontWeight.normal,
                fontSize: 13.spMin,
                color: AppColor.black,
              ),
            ),
            trailing: Obx(() {
              return SizedBox(
                width: 45,
                height: 24,
                child: FlutterSwitch(
                  padding: 1,
                  value: controller.smsNotification.value,
                  activeColor: AppColor.color_0EBBB6,
                  inactiveColor: AppColor.color_F4F5FA,
                  onToggle: (value) {
                    controller.smsNotification(value);
                  },
                ),
              );
            }),
          ),
          ListTile(
            title: Text(
              "Promo & Discount",
              style: TextStyle(
                fontFamily: poppinsFamily,
                fontWeight: FontWeight.normal,
                fontSize: 13.spMin,
                color: AppColor.black,
              ),
            ),
            trailing: Obx(() {
              return SizedBox(
                width: 45,
                height: 24,
                child: FlutterSwitch(
                  padding: 1,
                  value: controller.promoNotification.value,
                  activeColor: AppColor.color_0EBBB6,
                  inactiveColor: AppColor.color_F4F5FA,
                  onToggle: (value) {
                    controller.promoNotification(value);
                  },
                ),
              );
            }),
          ),
          ListTile(
            title: Text(
              "App Update",
              style: TextStyle(
                fontFamily: poppinsFamily,
                fontWeight: FontWeight.normal,
                fontSize: 13.spMin,
                color: AppColor.black,
              ),
            ),
            trailing: Obx(() {
              return SizedBox(
                width: 45,
                height: 24,
                child: FlutterSwitch(
                  padding: 1,
                  value: controller.appUpdate.value,
                  activeColor: AppColor.color_0EBBB6,
                  inactiveColor: AppColor.color_F4F5FA,
                  onToggle: (value) {
                    controller.appUpdate(value);
                  },
                ),
              );
            }),
          ),
          ListTile(
            title: Text(
              "Payments",
              style: TextStyle(
                fontFamily: poppinsFamily,
                fontWeight: FontWeight.normal,
                fontSize: 13.spMin,
                color: AppColor.black,
              ),
            ),
            trailing: Obx(() {
              return SizedBox(
                width: 45,
                height: 24,
                child: FlutterSwitch(
                  padding: 1,
                  value: controller.payment.value,
                  activeColor: AppColor.color_0EBBB6,
                  inactiveColor: AppColor.color_F4F5FA,
                  onToggle: (value) {
                    controller.payment(value);
                  },
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
