import 'package:freegi_app/controller/contact_shop_controller.dart';
import 'package:get/get.dart';

class ContactShopBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ContactShopController>(() => ContactShopController());
  }
}
