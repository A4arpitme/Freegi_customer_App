import 'package:freegi_app/controller/cart_controller.dart';
import 'package:freegi_app/controller/customer_service_controller.dart';
import 'package:get/get.dart';

class CustomerServiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerServiceController>(() => CustomerServiceController());
  }
}
