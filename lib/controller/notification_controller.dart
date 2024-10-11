import 'package:get/get.dart';

class NotificationController extends GetxController{

  RxBool appNotification = false.obs;
  RxBool emailNotification = false.obs;
  RxBool smsNotification = false.obs;
  RxBool promoNotification = false.obs;
  RxBool appUpdate = false.obs;
  RxBool payment = false.obs;

}