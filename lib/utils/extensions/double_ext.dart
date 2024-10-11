import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension DoubleExt on num {
  SliverToBoxAdapter get sliverVerticalSpace => SliverToBoxAdapter(
        child: verticalSpace,
      );
}
