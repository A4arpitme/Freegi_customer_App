import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final phoneNumberCntrl = TextEditingController();
  final passwordCntrl = TextEditingController();

  RxBool rememberMe = false.obs;
}
