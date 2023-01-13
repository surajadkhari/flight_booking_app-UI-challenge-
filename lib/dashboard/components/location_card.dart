import 'package:flutter/material.dart';
import '../../utils/comons/custom_switch.dart';
import '../../utils/const/app_colors_const/app_colors_const.dart';

class BookingLocationCard extends StatefulWidget {
  const BookingLocationCard(
      {Key? key,
      required this.address,
      this.iconData = Icons.directions_bus_filled_outlined,
      this.isReturnRequired = false})
      : super(key: key);
  final String address;
  final IconData iconData;
  final bool isReturnRequired;
  @override
  State<BookingLocationCard> createState() => _BookingLocationCardState();
}

class _BookingLocationCardState extends State<BookingLocationCard> {
  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 320),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: AppColorConst.kAppGrey),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              widget.iconData,
              color: AppColorConst.kAppPrimaryColor.withOpacity(0.2),
            ),
            const SizedBox(
              width: 14,
            ),
            Container(
              width: 2,
              height: screenH * 0.02,
              color: AppColorConst.kAppGrey,
            ),
            const SizedBox(
              width: 14,
            ),
            Text(
              widget.address,
              style: const TextStyle(
                
                  color: AppColorConst.kAppPrimaryColor,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 100,
            ),
            widget.isReturnRequired
                ? Column(
                    children: [
                      const Text(
                        "Return?",
                        style: TextStyle(fontSize: 10),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      CustomSwitch(
                        value: _switchValue,
                        onChanged: (value) {
                          setState(() {
                            _switchValue = value;
                          });
                        },
                      ),
                    ],
                  )
                : const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
