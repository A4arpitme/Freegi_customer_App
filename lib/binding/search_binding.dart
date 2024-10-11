import 'package:flutter/material.dart';
import 'package:freegi_app/controller/cart_controller.dart';
import 'package:freegi_app/controller/search_controller.dart';
import 'package:get/get.dart';

class SearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchGetController>(() => SearchGetController());
  }
}
