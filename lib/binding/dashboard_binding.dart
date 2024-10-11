import 'package:freegi_app/controller/app_controller.dart';
import 'package:freegi_app/controller/cart_controller.dart';
import 'package:freegi_app/controller/dashboard_controller.dart';
import 'package:get/get.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
  }
}
