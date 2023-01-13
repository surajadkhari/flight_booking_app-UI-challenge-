import 'package:flutter/material.dart';

import '../../utils/comons/custom_elevated_button.dart';
import '../../utils/const/app_colors_const/app_colors_const.dart';
import '../../utils/const/app_const/app_const.dart';

class PrimaryDashboardCard extends StatelessWidget {
  const PrimaryDashboardCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(vertical: screenH * 0.05, horizontal: 14),
      height: screenH * 0.35,
      color: AppColorConst.kAppPrimaryColor,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    AppConst.kuptrain,
                    style: TextStyle(
                        color: AppColorConst.kAppWhiteColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    AppConst.kbookyournext,
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  )
                ],
              ),
              CircleAvatar(
                maxRadius: 25,
                backgroundColor: AppColorConst.kAppGrey,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: const [
                    CircleAvatar(
                        maxRadius: 24.2,
                        backgroundColor: AppColorConst.kAppPrimaryColor,
                        child: Icon(
                          Icons.notifications_outlined,
                          size: 25,
                        )),
                    Padding(
                      padding: EdgeInsets.only(top: 14, right: 0, left: 25),
                      child: CircleAvatar(
                        maxRadius: 6,
                        backgroundColor: AppColorConst.kAppOrange,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const CustomElevatedButton(
                bgColor: AppColorConst.kAppYelloColor,
                iconData: Icons.keyboard_double_arrow_right_outlined,
                lable: 'One Way',
                labelColor: AppColorConst.kAppPrimaryColor,
                iconColor: AppColorConst.kAppPrimaryColor,
              ),
              const SizedBox(
                width: 10,
              ),
              CustomElevatedButton(
                bgColor: AppColorConst.kAppPrimaryColor,
                iconData: Icons.cached_outlined,
                iconColor: AppColorConst.kAppGrey,
                lable: 'Round trip',
                labelColor: Colors.grey.withOpacity(0.3),
              ),
            ],
          )
        ],
      ),
    );
  }
}
