import 'package:freegi_app/controller/personal_details_controller.dart';
import 'package:get/get.dart';

class PersonalDetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PersonalDetailsController>(() => PersonalDetailsController());
  }
}
