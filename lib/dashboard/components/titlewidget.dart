import 'package:flutter/material.dart';
import 'package:intern_task/utils/const/app_colors_const/app_colors_const.dart';
import 'package:intern_task/utils/const/app_const/app_const.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({Key? key, required this.title, required this.onPressed})
      : super(key: key);
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: AppColorConst.kAppPrimaryColor),
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(
              AppConst.kseeAll,
              style: TextStyle(
                color: Colors.grey.withOpacity(0.7),
                fontWeight: FontWeight.w800,
                fontSize: 18,
              ),
            ),
          )
        ],
      ),
    );
  }
}
