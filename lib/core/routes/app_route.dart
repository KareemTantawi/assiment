import 'package:login_screen/features/auth/presentation/views/otp_screen.dart';
import 'package:login_screen/features/auth/presentation/views/phone_number_input_screen.dart';

import './routes.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => const PhoneNumberInputScreen(),
        );
      case Routes.otp:
        return MaterialPageRoute(
          builder: (_) => const OTPScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No Routes defiend for ${setting.name}',
              ),
            ),
          ),
        );
    }
  }
}
