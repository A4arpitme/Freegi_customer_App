import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';
import 'package:freegi_app/utils/utils.dart';

class CustomTextField extends StatelessWidget {
  final String label, hint;
  final TextStyle? labelStyle, hintStyle, textStyle;
  final TextEditingController cntrl;
  final FocusNode? focusNode;
  final bool obscureText, readOnly;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final InputBorder? textFieldBorder;
  final EdgeInsets? contentPadding;
  final int? minLines, maxLines;
  final double? height;
  final VoidCallback? onTap;

  const CustomTextField({
    super.key,
    required this.label,
    required this.hint,
    this.labelStyle,
    this.hintStyle,
    required this.cntrl,
    this.focusNode,
    this.obscureText = false,
    this.inputType = TextInputType.text,
    this.inputAction = TextInputAction.next,
    this.textFieldBorder,
    this.textStyle,
    this.contentPadding,
    this.minLines,
    this.maxLines,
    this.height,
    this.readOnly = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: labelStyle ??
              TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15.spMin,
                letterSpacing: 0.8,
                // height: 2.2,
                color: AppColor.black,
              ),
        ),
        SizedBox(
          height: minLines == null ? height ?? 56 : null,
          child: TextField(
            controller: cntrl,
            focusNode: focusNode,
            obscureText: obscureText,
            textInputAction: inputAction,
            keyboardType: inputType,
            minLines: minLines,
            maxLines: maxLines,
            readOnly: readOnly,
            onTap: onTap,
            style: textStyle ??
                TextStyle(
                  fontFamily: poppinsFamily,
                  color: AppColor.textBlackColor,
                  fontSize: 21.spMin,
                  // height: 3.1,
                ),
            decoration: InputDecoration(
              hintText: hint,
              contentPadding:
                  contentPadding ?? const EdgeInsets.fromLTRB(10, 10, 10, 10).r,
              fillColor: AppColor.white,
              // isDense: true,
              border: textFieldBorder ?? Utils.textFieldOutlineBorder,
              focusedBorder: textFieldBorder ?? Utils.textFieldOutlineBorder,
              enabledBorder: textFieldBorder ?? Utils.textFieldOutlineBorder,
              disabledBorder: textFieldBorder ?? Utils.textFieldOutlineBorder,
              errorBorder: textFieldBorder ?? Utils.textFieldOutlineBorder,
              focusedErrorBorder:
                  textFieldBorder ?? Utils.textFieldOutlineBorder,
              hintStyle: hintStyle ??
                  TextStyle(
                    fontFamily: poppinsFamily,
                    color: AppColor.color_DDE2E5,
                    fontSize: 21.spMin,
                    height: 3.1,
                  ),
            ),
          ),
        )
      ],
    );
  }
}
