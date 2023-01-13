import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../utils/const/app_colors_const/app_colors_const.dart';
import 'location_card.dart';
import 'dart:math' as math;

class BookingLocationWidget extends StatefulWidget {
  const BookingLocationWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<BookingLocationWidget> createState() => _BookingLocationWidgetState();
}

class _BookingLocationWidgetState extends State<BookingLocationWidget> {
  late TextEditingController sourceTextController;
  late TextEditingController destinationController;
  final DateTime _selecteDateTime = DateTime.now();
  late String chooseDate;
  DateTime? startDate;
  @override
  void initState() {
    chooseDate = "Choose Date";
    sourceTextController = TextEditingController();
    destinationController = TextEditingController();
    super.initState();
  }

  Future<DateTime?> pickDate() async {
    return await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1999),
      lastDate: DateTime(2999),
    );
  }

  String? startDateValidator(value) {
    if (_selecteDateTime == null) return "select the start date";
    return null;
  }

  String _displayText(String begin, DateTime? date) {
    if (date != null) {
      // return date.toString().split(' ')[0];
      return "${DateFormat.E().format(date)},${DateFormat.MMM().format(date)},${DateFormat.d().format(date)}";
    } else {
      return 'Choose The Date';
    }
  }

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
        margin: const EdgeInsets.only(left: 16, right: 16),
        height: screenH * 0.456,
        width: screenW,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: TextFormField(
                      style: const TextStyle(
                          color: AppColorConst.kAppPrimaryColor),
                      decoration: InputDecoration(
                          prefixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(Icons.directions_bus_filled_outlined),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 2,
                                height: screenH * 0.02,
                                color: AppColorConst.kAppGrey,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                          hintText: "Starting point",
                          hintStyle: TextStyle(color: AppColorConst.kAppGrey),
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  width: 1, color: AppColorConst.kAppGrey)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  width: 1, color: AppColorConst.kAppGrey))),
                    ),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 10),
                    child: TextFormField(
                      style: const TextStyle(
                          color: AppColorConst.kAppPrimaryColor),
                      decoration: InputDecoration(
                          prefixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(Icons.directions_bus_filled_outlined),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 2,
                                height: screenH * 0.02,
                                color: AppColorConst.kAppGrey,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                          hintText: "Destination",
                          hintStyle: TextStyle(color: AppColorConst.kAppGrey),
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  width: 1, color: AppColorConst.kAppGrey)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  width: 1, color: AppColorConst.kAppGrey))),
                    ),
                  ),
                  // const BookingLocationCard(
                  //   address: 'Boston, Ma',
                  //   iconData: Icons.directions_bus_filled_outlined,
                  //   isReturnRequired: false,
                  // ),
                  Positioned(
                      left: 0,
                      right: -screenW * 0.6,
                      top: -10,
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
              BookingLocationCard(
                onTap: () async {
                  startDate = await pickDate();
                  chooseDate = _displayText("start", startDate);
                  setState(() {});
                },
                address: chooseDate,
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
      ),
    );
  }
}
