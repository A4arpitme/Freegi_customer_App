import 'package:flutter/cupertino.dart';
import 'package:freegi_app/utils/enums.dart';
import 'package:get/get.dart';

class AddressDetailController extends GetxController{

  final houseFlatCntrl = TextEditingController();
  final floorCntrl = TextEditingController();
  final apartmentCntrl = TextEditingController();
  final landmarkCntrl = TextEditingController();

  final addressTypes= AddressTypes.values;

  Rx<AddressTypes> selectedType = AddressTypes.home.obs;

}