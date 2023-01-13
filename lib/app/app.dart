import 'package:flutter/material.dart';
import 'package:intern_task/utils/const/app_colors_const/app_colors_const.dart';

import '../dashboard/dashboard.dart';

class TrainingBookingApp extends StatelessWidget {
  const TrainingBookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //  useMaterial3: true,
      debugShowCheckedModeBanner: false,
      title: "TrainingBookingApp",
      home: const DashbaordScreen(),
      theme: ThemeData(
          fontFamily: "Product Sans",
          scaffoldBackgroundColor: AppColorConst.kAppscaffoldBgColor,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(elevation: 0))),
    );
  }
}
