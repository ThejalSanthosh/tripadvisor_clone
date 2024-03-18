import 'package:trip_advisor/core/constants/image_constants.dart';
import 'package:trip_advisor/model/hotel_result_model.dart';

class HotelResultController {
  static List<HotelResultModel> hotelSearchResList = [
    HotelResultModel(
        image: [
          ImageConstant.hotelImg1,
          ImageConstant.hotelImg2,
          ImageConstant.hotelImg3,
          ImageConstant.hotelImg4
        ],
        bestSeller: true,
        name: "1.The First Collection at Jumeirah Village Circle",
        circleCount: 4,
        reviewsCount: "14,422",
        spotDest: "Palm Jumeriah",
        price: "\$789"),
    HotelResultModel(
        image: [
          ImageConstant.hotelImg5,
          ImageConstant.hotelImg6,
          ImageConstant.hotelImg7,
        ],
        bestSeller: false,
        name: "2.Atlantis The Palm",
        circleCount: 5,
        reviewsCount: "11,422",
        spotDest: "Palm",
        price: "\$1789"),
    HotelResultModel(
        image: [
          ImageConstant.hotelImg8,
          ImageConstant.hotelImg9,
          ImageConstant.hotelImg10,
          ImageConstant.hotelImg11
        ],
        bestSeller: true,
        name: "3.Grand Cosmopolitan Hotel - Dubai",
        circleCount: 4,
        reviewsCount: "1,522",
        spotDest: "Lasrh",
        price: "\$990"),
  ];
}
