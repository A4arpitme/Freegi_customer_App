import 'package:freegi_app/utils/enums.dart';
import 'package:get/get.dart';

class ShopController extends GetxController {
  final itemCategories = ['All', 'Fruits', 'Vegetables', 'Snacks'];
  final allFilterTypes = FilterType.values;
  Rx<FilterType> selectedFilterType = Rx(FilterType.ascending);
}
