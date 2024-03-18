import 'package:trip_advisor/core/constants/image_constants.dart';
import 'package:trip_advisor/model/resturant_result_model.dart';

class ResturantController {
  static List cardResturantList = [
    ResturantResultModel(
        placeName: "Shabestan",
        pic: ImageConstant.resEssImg1,
        circleCount: 5,
        reviewsCount: "1,234",
        spotDest: "Dubai"),
    ResturantResultModel(
        placeName: "Al amoor resturant",
        pic: ImageConstant.resEssImg2,
        circleCount: 5,
        reviewsCount: "1,234",
        spotDest: "Dubai"),
    ResturantResultModel(
        placeName: "Pathan Resturant",
        pic: ImageConstant.resEssImg3,
        circleCount: 5,
        reviewsCount: "1,234",
        spotDest: "Dubai"),
  ];

  static List cardResturantReserveList = [
    ResturantResultModel(
        placeName: "Barenwirt",
        pic: ImageConstant.resResImg1,
        circleCount: 4,
        reviewsCount: "234",
        spotDest: "Dubai"),
    ResturantResultModel(
        placeName: "Dubai",
        pic: ImageConstant.resResImg2,
        circleCount: 5,
        reviewsCount: "1,434",
        spotDest: "Dubai"),
    ResturantResultModel(
        placeName: "La Table de la Réserve",
        pic: ImageConstant.resResImg3,
        circleCount: 5,
        reviewsCount: "1,234",
        spotDest: "Dubai"),
  ];
}
