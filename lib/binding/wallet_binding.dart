import 'package:freegi_app/controller/cart_controller.dart';
import 'package:freegi_app/controller/wallet_controller.dart';
import 'package:get/get.dart';

class WalletBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WalletController>(() => WalletController());
  }
}
