import 'package:freegi_app/controller/cart_controller.dart';
import 'package:freegi_app/controller/top_up_controller.dart';
import 'package:get/get.dart';

class TopUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TopUpController>(() => TopUpController());
  }
}
