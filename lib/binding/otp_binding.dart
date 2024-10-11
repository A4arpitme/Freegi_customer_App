import 'package:freegi_app/controller/otp_controller.dart';
import 'package:get/get.dart';

class OtpBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OtpController>(() => OtpController());
  }
}
