import 'package:flutter/material.dart';
import 'package:freegi_app/utils/enums.dart';
import 'package:get/get.dart';

class HelpCenterController extends GetxController with GetSingleTickerProviderStateMixin {
  final contactUsTypes = ContactUsTypes.values;

  final List<Tab> myTabs = <Tab>[
    const Tab(text: 'FAQ'),
    const Tab(text: 'Contact Us'),
  ];

  late TabController tabCntrl;

  @override
  void onInit() {
    super.onInit();
    tabCntrl = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void onClose() {
    tabCntrl.dispose();
    super.onClose();
  }
}
