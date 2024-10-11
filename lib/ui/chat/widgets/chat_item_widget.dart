import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freegi_app/utils/colors.dart';
import 'package:freegi_app/utils/text_styles.dart';

class ChatItemWidget extends StatelessWidget {
  final bool isSent;
  final String msg;

  const ChatItemWidget({super.key, required this.isSent, required this.msg});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15).r,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: isSent ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment:
                  isSent ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10).r,
                  decoration: BoxDecoration(
                    color: isSent ? AppColor.color_1D272F : AppColor.color_F9F9F9,
                    borderRadius: BorderRadius.only(
                      topRight: const Radius.circular(12).r,
                      topLeft: const Radius.circular(12).r,
                      bottomRight:
                          isSent ? Radius.zero : const Radius.circular(12).r,
                      bottomLeft:
                          isSent ? const Radius.circular(12).r : Radius.zero,
                    ),
                  ),
                  child: Text(
                    msg,
                    style: TextStyle(
                      fontFamily: poppinsFamily,
                      fontWeight: FontWeight.normal,
                      fontSize: 14.spMin,
                      color: AppColor.color_A7A9B7,
                    ),
                  ),
                ),
                8.verticalSpace,
                Text(
                  "4:26 Am",
                  style: TextStyle(
                    fontFamily: poppinsFamily,
                    fontWeight: FontWeight.normal,
                    fontSize: 12.spMin,
                    color: AppColor.color_A7A9B7,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
