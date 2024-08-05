import 'package:app_clopallmedie_dashboard/core/styles/colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButtonWidget extends StatelessWidget {
  const AppButtonWidget({
    super.key,
    required this.title,
    required this.onPressed,
    this.color = AppColors.primaryColor,
    this.textColor = Colors.white,
    this.height = 44,
    this.width = 340,
    this.titleFontSize = 16,
  });
  final String title;
  final void Function()? onPressed;
  final Color color;
  final Color textColor;
  final double height;
  final double width;
  final double titleFontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
      width: width.w,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          // style: TextStyles.font16WhiteSemiBold.copyWith(
          //   color: textColor,
          //   fontSize: titleFontSize,
          // ),
          style: TextStyle(
            color: textColor,
            fontSize: titleFontSize,
          ),
        ),
      ),
    );
  }
}
