import 'package:freegi_app/controller/cart_controller.dart';
import 'package:freegi_app/controller/payment_controller.dart';
import 'package:get/get.dart';

class PaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentController>(() => PaymentController());
  }
}
