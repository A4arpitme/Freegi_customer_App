import 'package:freegi_app/controller/app_controller.dart';
import 'package:freegi_app/controller/cart_controller.dart';
import 'package:freegi_app/controller/set_language_controller.dart';
import 'package:get/get.dart';

class SetLanguageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SetLanguageController>(() => SetLanguageController());
  }
}
