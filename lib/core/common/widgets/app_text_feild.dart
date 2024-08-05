import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_screen/core/styles/colors/app_color.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.textEditingController,
    required this.onChanged,
    required this.validator,
    this.title,
    required this.hintText,
    required this.onFieldSubmitted,
    this.obscureText = false,
    this.onPressed,
    this.focusNode,
    this.nextFocusNode,
    this.icon,
    this.textInputAction,
    this.keyboardType,
  });

  final TextEditingController textEditingController;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final String? title;
  final String hintText;
  final bool obscureText;
  final void Function(String)? onFieldSubmitted;
  final void Function()? onPressed;
  final IconData? icon;
  final FocusNode? focusNode;
  final FocusNode? nextFocusNode;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      obscureText: obscureText,
      obscuringCharacter: '*',
      autocorrect: true,
      focusNode: focusNode,
      clipBehavior: Clip.antiAlias,
      controller: textEditingController,
      onFieldSubmitted: (value) {
        onFieldSubmitted?.call(value);
        if (nextFocusNode != null) {
          FocusScope.of(context).requestFocus(nextFocusNode);
        }
      },
      onChanged: onChanged,
      validator: validator,
      // cursorColor: AppColors.primaryColor,
      cursorWidth: 2.w,
      cursorHeight: 22.h,
      cursorColor: Colors.black26,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.withOpacity(0.1),
        suffixIcon: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            // color: AppColors.primaryColor,
          ),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.black.withOpacity(0.6),
          fontSize: 13,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            width: 1,
            // color: const Color(0xFFCFD4DC),
            color: AppColors.primaryColor,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            width: 1,
            color: AppColors.errorColor,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            width: 1,
            color: AppColors.errorColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            width: 1,
            // color: const Color(0xFFCFD4DC),
            color: AppColors.primaryColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            width: 2,
            // color: const Color(0xFFCFD4DC),
            color: AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
