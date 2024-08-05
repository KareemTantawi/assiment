import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:login_screen/core/styles/colors/app_color.dart';

// import 'package:q_app/core/theming/colors.dart';
// import 'package:q_app/features/login/presentation/logic/sent_otp_cubit/sent_otp_cubit.dart';
// import 'package:q_app/generated/l10n.dart';

class CustomPhoneNumberInput extends StatefulWidget {
  const CustomPhoneNumberInput({super.key});

  @override
  PhoneNumberInputState createState() => PhoneNumberInputState();
}

class PhoneNumberInputState extends State<CustomPhoneNumberInput> {
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'EG';
  PhoneNumber number = PhoneNumber(isoCode: 'EG');

  @override
  Widget build(BuildContext context) {
    // Define the colors inline to match the design
    // final Color borderColor = Colors.grey.shade300; // Soft border color
    const Color borderColor = Colors.grey; // Soft border color
    const Color primaryColor =
        AppColors.primaryColor; // Primary color from your theme

    // final sentOtpCubit = context.read<SentOtpCubit>();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        InternationalPhoneNumberInput(
          onInputChanged: (PhoneNumber number) {
            print(number.phoneNumber);
            // sentOtpCubit.phoneNumber = number.phoneNumber!;
          },
          onInputValidated: (bool value) {
            print(value);
          },
          selectorConfig: const SelectorConfig(
            selectorType: PhoneInputSelectorType.DROPDOWN,
            // useBottomSheetSafeArea: true,
            setSelectorButtonAsPrefixIcon: true,
            trailingSpace: true,
            useEmoji: true,
            showFlags: true,
            leadingPadding: 20,
          ),
          // validator: (String? value) {
          //   return value!.isNotEmpty ? null : 'Please enter phone number';
          // },
          locale: 'en',
          textAlign: TextAlign.center,
          cursorColor: AppColors.primaryColor,
          countries: const ['EG'],
          autoValidateMode: AutovalidateMode.disabled,
          selectorTextStyle: const TextStyle(color: primaryColor),
          initialValue: number,
          textFieldController: controller,
          formatInput: true,
          keyboardType: const TextInputType.numberWithOptions(
              signed: true, decimal: true),
          inputDecoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r), // More rounded corners
              borderSide: const BorderSide(color: borderColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(color: borderColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(color: primaryColor, width: 1.5.w),
            ),
            // hintText: S.of(context).phone_hint_text,
            // hintTextDirection: TextDirection.ltr,
            hintStyle: const TextStyle(),
            alignLabelWithHint: true,
          ),
          onSaved: (PhoneNumber number) {
            print('On Saved: $number');
          },
        ),
      ],
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
