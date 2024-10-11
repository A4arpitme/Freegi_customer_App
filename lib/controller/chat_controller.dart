import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
  final msgCntrl = TextEditingController();

  final RxList<String> chatList = RxList<String>([]);

  List<String> get chats => chatList.reversed.toList();
}
