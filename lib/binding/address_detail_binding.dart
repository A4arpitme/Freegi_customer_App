import 'package:freegi_app/controller/address_detail_controller.dart';
import 'package:get/get.dart';

class AddressDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddressDetailController>(() => AddressDetailController());
  }
}
