import 'package:freegi_app/controller/coupons_controller.dart';
import 'package:get/get.dart';

class CouponsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CouponsController>(() => CouponsController());
  }
}
