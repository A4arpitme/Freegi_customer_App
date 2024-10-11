import 'package:freegi_app/controller/app_web_controller.dart';
import 'package:freegi_app/controller/cart_controller.dart';
import 'package:get/get.dart';

class AppWebBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppWebController>(() => AppWebController());
  }
}
