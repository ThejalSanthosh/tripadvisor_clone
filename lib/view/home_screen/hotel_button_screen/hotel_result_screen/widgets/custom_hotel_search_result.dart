import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:trip_advisor/controller/hotel_result_controller.dart';
import 'package:trip_advisor/core/constants/color_constants.dart';
import 'package:trip_advisor/model/hotel_result_model.dart';
import 'package:trip_advisor/view/home_screen/widgets/custom_elevated_button.dart';

class CustomHotelSearchResult extends StatelessWidget {
  CustomHotelSearchResult({super.key, required this.hotelResultModel});

  final HotelResultModel hotelResultModel;
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
              height: 190,
              child: PageView.builder(
                controller: pageController,
                itemCount: hotelResultModel.image.length,
                itemBuilder: (context, imageIndex) => Container(
                  child: Image.asset(
                    hotelResultModel.image[imageIndex],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: 10,
                child: SmoothPageIndicator(
                    effect: SlideEffect(
                        spacing: 4,
                        radius: 8,
                        dotWidth: 7,
                        dotHeight: 7,
                        paintStyle: PaintingStyle.fill,
                        strokeWidth: 1.5,
                        dotColor: Colors.white60,
                        activeDotColor: Colors.white),
                    controller: pageController,
                    count: hotelResultModel.image.length)

                // Row(

                //   children: List.generate(
                //               hotelResultModel.image.length,
                //               (index) => Padding(
                //                     padding: const EdgeInsets.only(left: 3),
                //                     child: CircleAvatar(
                //                       backgroundColor: (index == postPageIndex - 1)
                //                           ? ColorConstant.primaryWhite
                //                           : null,
                //                       radius: (index == postPageIndex - 1) ? 5 : 3,
                //                     ),
                //                   ),
                // )

                // )
                ),
            Positioned(
              top: 13,
              right: 13,
              child: CircleAvatar(
                backgroundColor: ColorConstant.primaryWhite,
                radius: 20,
                child: Icon(Icons.favorite_border),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              hotelResultModel.bestSeller
                  ? Container(
                      padding: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color: ColorConstant.primaryBlack, width: 2),
                      ),
                      child: Text(
                        "BEST SELLER",
                        style: TextStyle(
                            fontSize: 12,
                            color: ColorConstant.primaryBlack,
                            fontWeight: FontWeight.bold),
                      ),
                      // : Text("13% LESS THAN USUAL",
                      //     style: TextStyle(
                      //         fontSize: 12,
                      //         color: ColorConstant.secondayRed,
                      //         fontWeight: FontWeight.bold)),
                    )
                  : Container(
                      padding: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color: ColorConstant.secondayRed, width: 2),
                      ),
                      child: Text(
                        "13% LESS THAN USUAL",
                        style: TextStyle(
                            fontSize: 12,
                            color: ColorConstant.secondayRed,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
              SizedBox(
                height: 8,
              ),
              Text(
                hotelResultModel.name,
                style: TextStyle(
                    fontSize: 18,
                    color: ColorConstant.primaryBlack,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  ...List.generate(
                      hotelResultModel.circleCount,
                      (index) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 1),
                            child: CircleAvatar(
                              radius: 6,
                              backgroundColor: ColorConstant.primaryGreen,
                            ),
                          )),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    hotelResultModel.reviewsCount,
                    style: TextStyle(
                        color: ColorConstant.primaryBlack.withOpacity(.6),
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                hotelResultModel.spotDest,
                style: TextStyle(
                    fontSize: 14,
                    color: ColorConstant.primaryBlack,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    "Visit website",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: ColorConstant.primaryBlack,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  Icon(
                    Icons.arrow_outward,
                    size: 17,
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Text(hotelResultModel.price,
                  style: TextStyle(
                      color: ColorConstant.primaryBlack,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    "Booking.com",
                    style: TextStyle(
                        color: ColorConstant.primaryBlack,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  Icon(
                    Icons.arrow_outward,
                    size: 17,
                  ),
                  Spacer(),
                  CustomElevatedButton(
                    text: "View deal",
                    buttonColor: ColorConstant.secondayYellow,
                    textColor: ColorConstant.primaryBlack,
                    onPressed: () {},
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
