import 'package:get/get.dart';

class TopUpController extends GetxController {
  RxString selectedAmount = "Rs 500".obs;
  List<String> amounts = [
    "Rs 100",
    "Rs 200",
    "Rs 500",
    "Rs 1000",
    "Rs 1500",
    "Rs 2000",
  ];
}
