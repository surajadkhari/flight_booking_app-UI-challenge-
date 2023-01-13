import 'package:flutter/material.dart';
import 'package:intern_task/dashboard/location_models/location_model.dart';
import 'package:intern_task/utils/const/app_colors_const/app_colors_const.dart';
import 'package:intern_task/utils/const/app_const/app_const.dart';

class LocationCardInfo extends StatelessWidget {
  const LocationCardInfo({Key? key, required this.data}) : super(key: key);

  final LocationModel data;

  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.of(context).size.width;
    double screenH = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      margin: const EdgeInsets.symmetric(horizontal: 14),
      width: screenW * 0.74,
      height: 80,
      decoration: BoxDecoration(
          color: AppColorConst.kAppWhiteColor,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Container(
            width: screenW * 0.2,
            height: screenH * 0.1,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(data.locationImage))),
          ),
          SizedBox(
            width: screenW * 0.04,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: screenW * 0.4,
                child: Text(
                  data.locationName,
                  style: const TextStyle(
                      color: AppColorConst.kAppPrimaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        AppConst.kfrom,
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      Text(
                        "\$ ${data.price}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: screenW * 0.2,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        size: 15,
                        color: AppColorConst.kAppYelloColor,
                      ),
                      SizedBox(
                        width: screenW * 0.01,
                      ),
                      Text(data.rating)
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
