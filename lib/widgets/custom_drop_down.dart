

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';


abstract class CustomDropDownModel {
  String showName();
}

class CommonDropDownModel extends CustomDropDownModel {
  final String id;
  final String type;

  CommonDropDownModel({
    required this.type,
    required this.id,
  });

  bool matchId(String id) {
    return id == this.id;
  }

  @override
  String showName() {
    return type;
  }
}


class CustomDropDown<T extends CustomDropDownModel> extends StatelessWidget {
  const CustomDropDown({
    super.key,
    required this.items,
    required this.selectedItem,
    required this.callback,
    required this.hint,
    this.useDefaultValidator = true,
    this.validator,
  });

  final List<T> items;

  final T? selectedItem;

  final void Function(T?) callback;

  final String hint;

  final bool useDefaultValidator;

  final String? Function(T?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonHideUnderline(
          child: DropdownButtonFormField<T>(
            decoration: InputDecoration(
              // contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 4),
              fillColor: AppColor.white,
              filled: true,
              enabledBorder: UnderlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColor.color_E2E2E2,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColor.color_E2E2E2,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            validator: useDefaultValidator
                ? (T? value) {
                    return value == null ? "Choose $hint" : null;
                  }
                : validator,
            items: items.map<DropdownMenuItem<T>>((T value) {
              return DropdownMenuItem<T>(
                value: value,
                child: RichText(
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  text: TextSpan(
                    text: value.showName(),
                    style:TextStyle(
                      fontFamily: poppinsFamily,
                      fontWeight: FontWeight.normal,
                      fontSize: 14.spMin,
                      color: AppColor.black,
                    ),
                  ),
                ),
              );
            }).toList(),
            selectedItemBuilder: (context) {
              return items
                  .map(
                    (e) => RichText(
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      text: TextSpan(
                        text: e.showName(),
                        style: TextStyle(
                          fontFamily: poppinsFamily,
                          fontWeight: FontWeight.normal,
                          fontSize: 14.spMin,
                          color: AppColor.black,
                        ),
                      ),
                    )
                  )
                  .toList();
            },
            onChanged: callback,
            icon: const Icon(
              Icons.keyboard_arrow_down_outlined,
              // size: 30,
              color: AppColor.primaryColor,
            ),
            value: selectedItem,
            hint: Text(
              hint,
              style: TextStyle(
                fontFamily: poppinsFamily,
                fontWeight: FontWeight.normal,
                fontSize: 14.spMin,
                color: AppColor.color_555555,
              ),
            ),
            isExpanded: true,
          ),
        ),
        SizedBox(
          height: 2.h,
        )
      ],
    );
  }
}