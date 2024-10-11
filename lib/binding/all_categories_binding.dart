import 'package:freegi_app/controller/all_categories_controller.dart';
import 'package:freegi_app/controller/cart_controller.dart';
import 'package:get/get.dart';

class AllCategoriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllCategoriesController>(() => AllCategoriesController());
  }
}
