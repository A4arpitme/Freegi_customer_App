import 'package:flutter/material.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:pinput/pinput.dart';

class OTPInput extends StatefulWidget {
  final TextEditingController otpController;

  const OTPInput({super.key, required this.otpController});

  @override
  State<OTPInput> createState() => _OTPInputState();
}

class _OTPInputState extends State<OTPInput> {
  @override
  Widget build(BuildContext context) {
    // final width = (MediaQuery.of(context).size.width - 100) / 4;
    final defaultPinTheme = PinTheme(
      width: 70,
      height: 70,
      textStyle: const TextStyle(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF111111).withOpacity(0.1),
        ),
        borderRadius: BorderRadius.circular(15),
        color: AppColor.white,
      ),
    );
    return Pinput(
      length: 4,
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: defaultPinTheme,
      submittedPinTheme: defaultPinTheme,
      errorPinTheme: defaultPinTheme,
      validator: null,
      controller: widget.otpController,
      pinputAutovalidateMode: PinputAutovalidateMode.disabled,
      pinAnimationType: PinAnimationType.none,
      showCursor: true,
    );
  }
}
