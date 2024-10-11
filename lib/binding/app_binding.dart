import 'package:freegi_app/controller/app_controller.dart';
import 'package:freegi_app/controller/cart_controller.dart';
import 'package:get/get.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppController>(() => AppController());
  }
}
