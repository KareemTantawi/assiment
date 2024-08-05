import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_screen/core/common/widgets/custom_button.dart';
import 'package:login_screen/core/common/widgets/custom_drop_dpwn.dart';
import 'package:login_screen/core/extension/context_extension1.dart';
import 'package:login_screen/core/routes/routes.dart';
import 'package:login_screen/core/styles/colors/app_color.dart';
import 'package:login_screen/core/utils/spacing.dart';
import 'package:login_screen/features/auth/presentation/widgets/phone_number_input.dart';

class PhoneNumberInputScreen extends StatefulWidget {
  const PhoneNumberInputScreen({super.key});

  @override
  State<PhoneNumberInputScreen> createState() => _PhoneNumberInputScreenState();
}

class _PhoneNumberInputScreenState extends State<PhoneNumberInputScreen> {
  bool isEnglishLanguage = true;
  String subsId = "";
  int sessionId = 0;
  String? categoryName;

  @override
  Widget build(BuildContext context) {
    // final sentOtpCubit = context.read<SentOtpCubit>();

    final formKey = GlobalKey<FormState>();
    return Scaffold(
      // backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 80.h),
                  Image.asset('assets/images/login_photo.png'),
                  verticalSpace(30),
                  Text(
                    // S.of(context).login_hello,
                    'Welcome to Our Application,Please Enter you phone to Login',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // const Text(
                  //   // S.of(context).login_welcome,
                  //   'Welcome',
                  //   style: TextStyle(color: AppColors.primaryColor),
                  //   textAlign: TextAlign.center,
                  // ),
                  verticalSpace(25),
                  const CustomPhoneNumberInput(),
                  SizedBox(height: 12.h),
                  CustomCreateDropDown(
                    hintText: 'Select from the Items',
                    items: const [],
                    onChanged: (value) {
                      setState(() {
                        categoryName = value;
                      });
                    },
                    value: categoryName,
                  ),
                  verticalSpace(20),
                  CustomButton(
                    onPressed: () {},
                    lastRadius: 20,
                    threeRadius: 20,
                    backgroundColor: AppColors.primaryColor,
                    text: 'Login',
                    width: context.width,
                    height: 40.h,
                  ),
                  verticalSpace(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // const Text(
                      //   // S.of(context).change_language_to,
                      //   '',
                      //   style: TextStyle(
                      //     color: Colors.black,
                      //   ),
                      // ),
                      TextButton(
                        onPressed: () {
                          context.pushName(Routes.otp);
                        },
                        child: const Text(
                          'To Otp Screen',
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            decorationColor: AppColors.primaryColor,
                            decoration: TextDecoration
                                .underline, // This underlines the text
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
