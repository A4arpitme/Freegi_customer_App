import 'package:freegi_app/controller/cart_controller.dart';
import 'package:freegi_app/controller/return_exchange_controller.dart';
import 'package:get/get.dart';

class ReturnExchangeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReturnExchangeController>(() => ReturnExchangeController());
  }
}
