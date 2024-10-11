import 'package:freegi_app/controller/terms_policy_controller.dart';
import 'package:get/get.dart';

class TermsPolicyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TermsPolicyController>(() => TermsPolicyController());
  }
}
