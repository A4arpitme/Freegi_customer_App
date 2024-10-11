import 'package:freegi_app/controller/product_details_controller.dart';
import 'package:get/get.dart';

class ProductDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductDetailsController>(() => ProductDetailsController());
  }
}
