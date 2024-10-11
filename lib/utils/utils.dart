import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freegi_app/main.dart';

class Utils {
  /// System overlays should be drawn with a light color. Intended for
  /// applications with a dark background.
  static const SystemUiOverlayStyle light = SystemUiOverlayStyle(
    // systemNavigationBarColor: AppColor.transparent,
    // systemNavigationBarIconBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.light,
    statusBarBrightness: Brightness.dark,
  );

  /// System overlays should be drawn with a dark color. Intended for
  /// applications with a light background.
  static const SystemUiOverlayStyle dark = SystemUiOverlayStyle(
    // systemNavigationBarColor: AppColor.white,
    // systemNavigationBarIconBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
  );

  static  InputBorder textFieldOutlineBorder = OutlineInputBorder(
    borderSide: const BorderSide(color: Color(0xFF6D6D6D), width: 1),
    borderRadius: BorderRadius.circular(8).r,
  );
}
