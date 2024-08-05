import 'package:flutter/material.dart';
import 'package:login_screen/core/styles/colors/app_color.dart';
import 'package:login_screen/core/styles/colors/colors_dark.dart';

class CustomContainerLinearAdmin extends StatelessWidget {
  const CustomContainerLinearAdmin({
    required this.height,
    required this.width,
    required this.child,
    super.key,
  });

  final double height;
  final double width;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [
            // const Color.fromARGB(255, 27, 52, 102).withOpacity(0.8),
            // ColorsDark.black1.withOpacity(0.8),
            AppColors.primaryColor,
            Colors.white,
          ],
          begin: Alignment(0.36, 0.27),
          end: Alignment(0.58, 0.85),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorsDark.black1.withOpacity(0.3),
            offset: const Offset(0, 4),
            blurRadius: 8,
          ),
          BoxShadow(
            color: ColorsDark.black2.withOpacity(0.3),
            offset: const Offset(0, 4),
            blurRadius: 2,
          ),
        ],
      ),
      child: child,
    );
  }
}
