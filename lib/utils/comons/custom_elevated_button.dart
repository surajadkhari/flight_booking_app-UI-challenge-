import 'package:flutter/material.dart';

import '../const/app_colors_const/app_colors_const.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {Key? key,
      required this.lable,
      required this.bgColor,
      required this.iconData,
      required this.labelColor,
      required this.iconColor
      })
      : super(key: key);
  final String lable;
  final Color bgColor;
  final IconData iconData;
  final Color labelColor;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
        
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: AppColorConst.kAppGrey),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        onPressed: () {},
        icon: Icon(
          iconData,
          color: iconColor
        ),
        label: Text(
          lable,
          style: TextStyle(color: labelColor),
        ));
  }
}
