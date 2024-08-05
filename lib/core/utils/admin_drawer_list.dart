// // List<DrawerItemModel>

// import 'package:app_clopallmedie_dashboard/core/common/dialog/custom_dialogs.dart';
// import 'package:app_clopallmedie_dashboard/core/common/widgets/text_app.dart';
// import 'package:app_clopallmedie_dashboard/core/extension/context_extension.dart';
// import 'package:app_clopallmedie_dashboard/core/styles/fonts/font_family_helper.dart';
// import 'package:app_clopallmedie_dashboard/core/styles/fonts/font_weight_helper.dart';
// import 'package:app_clopallmedie_dashboard/core/utils/app_logout.dart';
// import 'package:app_clopallmedie_dashboard/features/add_category/presentation/views/add_category.dart';
// import 'package:app_clopallmedie_dashboard/features/add_product/presentation/screens/add_product_screen.dart';
// import 'package:app_clopallmedie_dashboard/features/add_user/presentation/screens/add_user_screen.dart';
// import 'package:app_clopallmedie_dashboard/features/dashpoard/presentation/screens/dashboard_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:login_screen/core/common/widgets/text_app.dart';
// import 'package:login_screen/core/extension/context_extension.dart';
// import 'package:login_screen/core/styles/fonts/font_family_helper.dart';
// import 'package:login_screen/core/styles/fonts/font_weight_helper.dart';

// List<DrawerItemModel> adminDrawerList(BuildContext context) {
//   return <DrawerItemModel>[
//     //DashBoard
//     DrawerItemModel(
//       icon: const Icon(
//         Icons.dashboard,
//         color: Colors.white,
//       ),
//       title: TextApp(
//         text: 'DashBoard',
//         theme: context.textStyle.copyWith(
//           color: Colors.white,
//           fontSize: 17.sp,
//           fontFamily: FontFamilyHelper.poppinsEnglish,
//           fontWeight: FontWeightHelper.bold,
//         ),
//       ),
//       // page: const DashboardScreen(),
//     ),
//     //Categories
//     DrawerItemModel(
//       icon: const Icon(Icons.category_outlined, color: Colors.white),
//       title: TextApp(
//         text: 'Categories',
//         theme: context.textStyle.copyWith(
//           color: Colors.white,
//           fontSize: 17.sp,
//           fontFamily: FontFamilyHelper.poppinsEnglish,
//           fontWeight: FontWeightHelper.bold,
//         ),
//       ),
//       page: const AddCategoryScreen(),
//     ),
//     //Product
//     DrawerItemModel(
//       icon: const Icon(
//         Icons.production_quantity_limits,
//         color: Colors.white,
//       ),
//       title: TextApp(
//         text: 'Products',
//         theme: context.textStyle.copyWith(
//           color: Colors.white,
//           fontSize: 17.sp,
//           fontFamily: FontFamilyHelper.poppinsEnglish,
//           fontWeight: FontWeightHelper.bold,
//         ),
//       ),
//       page: const AddProductScreen(),
//     ),
//     //Users
//     DrawerItemModel(
//       icon: const Icon(
//         Icons.people_alt_rounded,
//         color: Colors.white,
//       ),
//       title: TextApp(
//         text: 'Users',
//         theme: context.textStyle.copyWith(
//           color: Colors.white,
//           fontSize: 17.sp,
//           fontFamily: FontFamilyHelper.poppinsEnglish,
//           fontWeight: FontWeightHelper.bold,
//         ),
//       ),
//       page: const UserScreen(),
//     ),
//     //Notifications
//     // DrawerItemModel(
//     //   icon: const Icon(
//     //     Icons.notifications_active,
//     //     color: Colors.white,
//     //   ),
//     //   title: TextApp(
//     //     text: 'Notifications',
//     //     theme: context.textStyle.copyWith(
//     //       color: Colors.white,
//     //       fontSize: 17.sp,
//     //       fontFamily: FontFamilyHelper.poppinsEnglish,
//     //       fontWeight: FontWeightHelper.bold,
//     //     ),
//     //   ),
//     //   page: const AddNotificationsScreen(),
//     // ),
//     //LogOut
//     DrawerItemModel(
//       icon: const Icon(
//         Icons.exit_to_app,
//         color: Colors.white,
//       ),
//       title: GestureDetector(
//         onTap: () {
//           CustomDialog.twoButtonDialog(
//             context: context,
//             textBody: 'Do you want log out?',
//             textButton1: 'Yes',
//             textButton2: 'No',
//             isLoading: false,
//             onPressed: () async {
//               await AppLogout().logout();
//             },
//           );
//         },
//         child: const Text(
//           'Logout',
//           style: TextStyle(
//             color: Colors.white,
//             fontFamily: 'Poppins',
//             fontWeight: FontWeightHelper.bold,
//             fontSize: 17,
//           ),
//         ),
//       ),
//       page: const UserScreen(),
//     ),
//   ];
// }

// class DrawerItemModel {
//   DrawerItemModel({
//     required this.icon,
//     required this.title,
//     required this.page,
//   });

//   final Icon icon;
//   final Widget title;
//   final Widget page;
// }
