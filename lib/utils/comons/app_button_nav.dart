import 'package:flutter/material.dart';
import 'package:intern_task/utils/const/app_colors_const/app_colors_const.dart';
import 'package:intern_task/utils/const/app_const/app_const.dart';

class AppButtonNav extends StatelessWidget {
  const AppButtonNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: (value) {},
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColorConst.kAppWhiteColor,
        selectedItemColor: AppColorConst.kAppPrimaryColor,
        unselectedItemColor: AppColorConst.kAppPrimaryColor.withOpacity(0.4),
        items: const [
          BottomNavigationBarItem(
              label: AppConst.kHome, icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: AppConst.kExplore, icon: Icon(Icons.search)),
          BottomNavigationBarItem(
              label: AppConst.kMyticket,
              icon: Icon(Icons.confirmation_number_outlined)),
          BottomNavigationBarItem(
              label: AppConst.kProfile,
              icon: Icon(Icons.person_outline_outlined)),
        ]);
  }
}
