import 'package:flutter/material.dart';
import 'package:freegi_app/controller/app_web_controller.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/widgets/custom_app_bar.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AppWebPage extends StatelessWidget {
  final String title, url;

  AppWebPage(
    this.url, {
    this.title = '',
    super.key,
  });

  final controller = Get.put(AppWebController());

  @override
  Widget build(BuildContext context) {
    final showAppBar = title.isNotEmpty;
    controller.setUrl(url);
    return Scaffold(
      appBar: showAppBar
          ? CustomAppBar(
              title: title,
            )
          : AppBar(
              toolbarHeight: 0,
              backgroundColor: AppColor.white,
            ),
      body: Stack(
        children: [
          WebViewWidget(controller: controller.webController),
          Obx(() {
            return Visibility(
              visible: controller.isLoading.value,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            );
          })
        ],
      ),
    );
  }
}
