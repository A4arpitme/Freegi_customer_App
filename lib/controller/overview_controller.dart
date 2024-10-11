import 'package:flutter/material.dart';
import 'package:freegi_app/generated/assets.dart';
import 'package:freegi_app/generated/l10n.dart';
import 'package:freegi_app/routes/app_routes.dart';
import 'package:get/get.dart';

class OverviewModel {
  final String imageName, headerText, subHeaderText;

  OverviewModel({
    required this.imageName,
    required this.headerText,
    required this.subHeaderText,
  });
}

class OverviewController extends GetxController {
  final pageController = PageController();

  final List<OverviewModel> overviews = [
    OverviewModel(
      imageName: Assets.imagesOverviewImage1,
      headerText: S.current.labelOverviewHeader1,
      subHeaderText: S.current.labelOverviewText1,
    ),
    OverviewModel(
      imageName: Assets.imagesOverviewImage2,
      headerText: S.current.labelOverviewHeader2,
      subHeaderText: S.current.labelOverviewText2,
    ),
    OverviewModel(
      imageName: Assets.imagesOverviewImage3,
      headerText: S.current.labelOverviewHeader3,
      subHeaderText: S.current.labelOverviewText3,
    ),
  ];

  RxInt currentPage = 0.obs;

  bool get changeIcon => currentPage.value == 2;

  void onPageChanged(int index) {
    currentPage(index);
  }

  void changePage() {
    if (changeIcon) {
      moveToSignUpPage();
      return;
    }
    pageController.animateToPage(
      currentPage.value + 1,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void moveToSignUpPage() {
    Get.offAllNamed(AppRoutes.signUp);
  }
}
