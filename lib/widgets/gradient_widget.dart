import 'package:flutter/material.dart';

class GradientWidget extends StatelessWidget {
  final Color color;

  const GradientWidget({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        // color: AppColor.color_FBB13C.withOpacity(0.1),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.1),
            blurRadius: 100,
            offset: const Offset(-20, 20),
            spreadRadius: 45,
          )
        ],
      ),
    );
  }
}
