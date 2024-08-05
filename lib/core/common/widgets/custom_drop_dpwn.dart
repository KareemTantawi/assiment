import 'package:app_clopallmedie_dashboard/core/common/widgets/text_app.dart';
import 'package:app_clopallmedie_dashboard/core/extension/context_extension.dart';
import 'package:app_clopallmedie_dashboard/core/styles/colors/app_color.dart';
import 'package:app_clopallmedie_dashboard/core/styles/fonts/font_family_helper.dart';
import 'package:app_clopallmedie_dashboard/core/styles/fonts/font_weight_helper.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCreateDropDown extends StatelessWidget {
  const CustomCreateDropDown({
    required this.items,
    required this.hintText,
    required this.onChanged,
    required this.value,
    super.key,
  });
  final String hintText;
  final List<String> items;
  final ValueChanged<String?> onChanged;
  final String? value;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          iconSize: 30,
          borderRadius: BorderRadius.circular(12),
          // dropdownColor: AppColors.primaryColor,
          dropdownColor: Colors.white,
          style: TextStyle(
            color: AppColors.primaryColor,
            fontSize: 14.sp,
            fontWeight: FontWeightHelper.medium,
            fontFamily: FontFamilyHelper.poppinsEnglish,
          ),
          elevation: 16,
          icon: const Icon(
            Icons.expand_more,
            color: Colors.white,
          ),
          onChanged: onChanged,
          value: items.isNotEmpty ? value : null,
          isExpanded: true,
          hint: TextApp(
            text: hintText,
            theme: context.textStyle.copyWith(
              fontSize: 14.sp,
              color: Colors.white,
              fontFamily: FontFamilyHelper.poppinsEnglish,
            ),
          ),
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              onTap: () {},
              value: value,
              child: TextApp(
                text: value,
                theme: context.textStyle.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeightHelper.medium,
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
