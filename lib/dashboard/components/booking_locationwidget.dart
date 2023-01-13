import 'package:flutter/material.dart';

import '../../utils/const/app_colors_const/app_colors_const.dart';
import 'location_card.dart';
import 'dart:math' as math;

class BookingLocationWidget extends StatelessWidget {
  const BookingLocationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.of(context).size.width;
    double screenH = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(top: screenH * 0.226),
      child: Container(
        padding: const EdgeInsets.only(top: 22),
        decoration: BoxDecoration(
            color: AppColorConst.kAppWhiteColor,
            borderRadius: BorderRadius.circular(20)),
        margin: const EdgeInsets.only(left: 14, right: 14),
        height: screenH * 0.456,
        width: screenW,
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                const BookingLocationCard(
                  address: "New York, NY",
                  iconData: Icons.directions_bus_filled_outlined,
                  isReturnRequired: false,
                ),
                Positioned(
                    left: 0,
                    right: -screenW * 0.6,
                    top: 50,
                    child: CircleAvatar(
                        backgroundColor:
                            AppColorConst.kAppGrey.withOpacity(0.4),
                        child: Transform.rotate(
                            angle: 90 * math.pi / 180,
                            child: const Icon(
                              Icons.compare_arrows_outlined,
                              color: AppColorConst.kAppPrimaryColor,
                            )))),
              ],
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                const BookingLocationCard(
                  address: 'Boston, Ma',
                  iconData: Icons.directions_bus_filled_outlined,
                  isReturnRequired: false,
                ),
                Positioned(
                    left: 0,
                    right: -screenW * 0.6,
                    top: -20,
                    child: CircleAvatar(
                        backgroundColor:
                            AppColorConst.kAppGrey.withOpacity(0.4),
                        child: Transform.rotate(
                            angle: 90 * math.pi / 180,
                            child: const Icon(
                              Icons.compare_arrows_outlined,
                              color: AppColorConst.kAppPrimaryColor,
                            )))),
              ],
            ),
            const BookingLocationCard(
              address: 'Thus, Oct 20 ',
              iconData: Icons.calendar_month,
              isReturnRequired: true,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(screenW * 0.82, screenH * 0.069),
                    backgroundColor: AppColorConst.kAppSecondaryColor,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: AppColorConst.kAppGrey),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Search Train",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
