import 'package:flutter/material.dart';
import 'package:freegi_app/widgets/custom_drop_down.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class EditProfileController extends GetxController {
  final fullNameCntrl = TextEditingController();
  final phoneCntrl = TextEditingController();
  final emailCntrl = TextEditingController();
  Rx<CommonDropDownModel?> selectedGender = Rx<CommonDropDownModel?>(null);
  DateTime selectedDateTime = DateTime.now();
  final dobCntrl = TextEditingController();

  List<CommonDropDownModel> genderValues = [
    CommonDropDownModel(type: "Male", id: "M"),
    CommonDropDownModel(type: "Female", id: "F"),
    CommonDropDownModel(type: "Other", id: "O"),
  ];

  Future<void> openDatePicker(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDateTime,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (pickedDate != null && pickedDate != selectedDateTime) {
      // callback(pickedDate);
      selectedDateTime = pickedDate;
      dobCntrl.text = DateFormat("dd/MM/y").format(selectedDateTime);
      // cntrl.text = "${pickedDate.toLocal()}".split(' ')[0];
    }
  }
}
