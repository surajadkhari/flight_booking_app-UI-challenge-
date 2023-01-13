import 'package:flutter/material.dart';
import '../utils/comons/app_button_nav.dart';
import '../utils/const/app_const/app_const.dart';
import 'components/booking_locationwidget.dart';
import 'components/location_card_info_widget.dart';
import 'components/primary_dasboardcard.dart';
import 'components/titlewidget.dart';
import 'location_models/location_model.dart';

class DashbaordScreen extends StatelessWidget {
  const DashbaordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const AppButtonNav(),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: const [
              PrimaryDashboardCard(),
              BookingLocationWidget(),
            ],
          ),
          TitleSection(
            title: AppConst.kpopularRoute,
            onPressed: () {},
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...LocationModel.locationList.map(
                  (e) => LocationCardInfo(
                    data: e,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
