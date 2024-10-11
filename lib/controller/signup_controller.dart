import 'package:country_picker/country_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  final TextEditingController phoneController = TextEditingController();
  Rx<Country> selectedCountry = CountryService().findByName("India")!.obs;

  void openCountryPicker(BuildContext context) {
    showCountryPicker(
      context: context,
      showPhoneCode: true,
      // showWorldWide: true,
      // optional. Shows phone code before the country name.
      onSelect: (Country country) {
        selectedCountry(country);
      },
    );
  }
}
