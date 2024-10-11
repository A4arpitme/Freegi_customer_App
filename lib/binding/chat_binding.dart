import 'package:freegi_app/controller/cart_controller.dart';
import 'package:freegi_app/controller/chat_controller.dart';
import 'package:get/get.dart';

class ChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatController>(() => ChatController());
  }
}
