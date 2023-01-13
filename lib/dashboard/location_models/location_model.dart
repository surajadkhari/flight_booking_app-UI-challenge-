import 'package:intern_task/utils/const/app_images/app_const_image.dart';

class LocationModel {
  final String locationImage;
  final String locationName;
  final String rating;
  final String price;

  LocationModel(
      {required this.locationImage,
      required this.locationName,
      required this.rating,
      required this.price});

 static List<LocationModel> locationList = [
    LocationModel(
        locationImage: AppConstImages.kLondonParisImage,
        locationName: "London to Paris",
        rating: "4.5",
        price: "39.74"),
    LocationModel(
        locationImage: AppConstImages.kLonNeImage,
        locationName: "London to Nepal",
        rating: "5",
        price: "39.74")
  ];
}
