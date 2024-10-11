import 'package:freegi_app/controller/cart_controller.dart';
import 'package:freegi_app/controller/my_orders_controller.dart';
import 'package:get/get.dart';

class MyOrdersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyOrdersController>(() => MyOrdersController());
  }
}
