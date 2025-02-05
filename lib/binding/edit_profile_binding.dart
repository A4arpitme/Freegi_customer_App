import 'package:freegi_app/controller/cart_controller.dart';
import 'package:freegi_app/controller/edit_profile_controller.dart';
import 'package:get/get.dart';

class EditProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditProfileController>(() => EditProfileController());
  }
}
