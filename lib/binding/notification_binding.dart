import 'package:freegi_app/controller/app_controller.dart';
import 'package:freegi_app/controller/cart_controller.dart';
import 'package:freegi_app/controller/notification_controller.dart';
import 'package:get/get.dart';

class NotificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotificationController>(() => NotificationController());
  }
}
