import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freegi_app/utils/colors.dart';

const String latoFamily = 'Lato';
const String ptSansFamily = 'PTSans';
const String poppinsFamily = 'Poppins';
const String urbanistFamily = 'Urbanist';

final TextStyle style14Bold = TextStyle(
  color: AppColor.color_03908C,
  fontWeight: FontWeight.bold,
  fontSize: 14.spMin,
  fontFamily: ptSansFamily,
  height: 1.08,
);

final TextStyle style14Regular444 = TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 14.spMin,
  fontFamily: ptSansFamily,
  height: 1.08,
  color: AppColor.color_444444,
);
final TextStyle style14RegularWhite = TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 14.spMin,
  fontFamily: poppinsFamily,
  height: 1.08,
  color: AppColor.white,
);

extension FontFamilyExtension on TextStyle {
  TextStyle get lato => copyWith(fontFamily: latoFamily);

  TextStyle get ptSans => copyWith(fontFamily: ptSansFamily);

  TextStyle get poppins => copyWith(fontFamily: poppinsFamily);

  TextStyle get urbanist => copyWith(fontFamily: urbanistFamily);

  TextStyle setColor(Color color) {
    return copyWith(color: color);
  }
}
