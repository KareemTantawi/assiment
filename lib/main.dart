import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_screen/core/routes/app_route.dart';
import 'package:login_screen/core/routes/routes.dart';
import 'package:login_screen/features/auth/presentation/views/phone_number_input_screen.dart';

void main() {
  runApp(Task(
    appRouter: AppRouter(),
  ));
}

class Task extends StatelessWidget {
  Task({super.key, required this.appRouter});
  AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: PhoneNumberInputScreen(),
        initialRoute: Routes.login,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
