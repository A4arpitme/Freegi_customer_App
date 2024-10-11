import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freegi_app/routes/app_routes.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/utils.dart';
import 'package:get/get.dart';

import '../generated/assets.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        Future.delayed(
          const Duration(seconds: 3),
          () {
            Get.offAllNamed(AppRoutes.overview);
          },
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColor.splashBgColor,
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: AppColor.transparent,
        systemOverlayStyle: Utils.dark,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
            child: SvgPicture.asset(Assets.imagesSplashBg),
          ),
        ],
      ),
    );
  }
}
