import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_screen/core/common/widgets/custom_button.dart';
import 'package:login_screen/core/extension/context_extension1.dart';
import 'package:login_screen/core/styles/colors/app_color.dart';
import 'package:login_screen/core/utils/spacing.dart';
import 'package:login_screen/features/auth/presentation/widgets/otp_text_field.dart';

// import 'package:q_app/core/networking/api_service.dart';
// import 'package:q_app/core/theming/colors.dart';
// import 'package:q_app/features/login/data/repos/validate_otp_repo_imp.dart';
// import 'package:q_app/features/login/presentation/logic/validate_cubit/validate_otp_cubit.dart';
// import 'package:q_app/features/login/presentation/views/widgets/otp_text_field.dart';
// import 'package:q_app/generated/l10n.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final validateOtpCubit = context.read<ValidateOtpCubit>();

    return Scaffold(
      // backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: 50.h),
                Image.asset(
                  'assets/images/otp.png',
                  // width: 100.w,
                ),
                SizedBox(height: 50.h),
                Text(
                  // S.of(context).verification_code,
                  'please enter the code we just sent to email kareem@gmail.com',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                  ),
                ),
                SizedBox(height: 12.h),
                // Text(
                //   // S.of(context).verification_text,
                //   'welcome',
                //   textAlign: TextAlign.center,
                //   style: TextStyle(
                //     fontSize: 16.sp,
                //     color: AppColors.primaryColor,
                //   ),
                // ),
                SizedBox(height: 30.h),
                OTPVerificationWidget(
                  controllers: [
                    TextEditingController(),
                    TextEditingController(),
                    TextEditingController(),
                    TextEditingController(),
                  ],
                  onChanged: (value) {},
                ),
                verticalSpace(20),
                CustomButton(
                  onPressed: () {},
                  lastRadius: 20,
                  threeRadius: 20,
                  backgroundColor: AppColors.primaryColor,
                  text: 'Verify',
                  width: context.width,
                  height: 40.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
