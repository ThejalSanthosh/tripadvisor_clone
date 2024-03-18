import 'package:flutter/material.dart';
import 'package:trip_advisor/controller/resturant_result_controller.dart';
import 'package:trip_advisor/core/constants/color_constants.dart';
import 'package:trip_advisor/view/dummy_db.dart';
import 'package:trip_advisor/view/global_widgets/custom_card_details.dart';
import 'package:trip_advisor/view/home_screen/hotel_button_screen/hotel_button_screen.dart';
import 'package:trip_advisor/view/home_screen/hotel_button_screen/hotel_result_screen/widgets/custom_container_result_screen.dart';
import 'package:trip_advisor/view/home_screen/resturant_screen/widgets/custom_resturant_card.dart';
import 'package:trip_advisor/view/home_screen/widgets/custom_elevated_button.dart';
import 'package:trip_advisor/view/home_screen/widgets/custom_text.dart';

class ResturantResultScreen extends StatefulWidget {
  const ResturantResultScreen({super.key});

  @override
  State<ResturantResultScreen> createState() => _ResturantResultScreenState();
}

class _ResturantResultScreenState extends State<ResturantResultScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HotelButtonscreen(
                          screenSelection: "Resturants",
                        ),
                      ),
                      (route) => false);
                },
                icon: Icon(
                  Icons.keyboard_arrow_left,
                  size: 33,
                )),
            centerTitle: true,
            title: Text(
              "Resturants in dubai",
              style: TextStyle(
                  color: ColorConstant.primaryBlack,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: ColorConstant.primaryBlack,
                  size: 28,
                ),
              ),
              SizedBox(
                width: 10,
              )
            ],
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(50),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomContainerResultScreen(
                          onPressed: () {},
                          buttonColor: ColorConstant.primaryBlack,
                          textColor: ColorConstant.primaryWhite,
                          text: "Map",
                          horizontalPadding: 10,
                          verticalPadding: 6,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomContainerResultScreen(
                            text: "Asian",
                            horizontalPadding: 10,
                            verticalPadding: 6),
                        SizedBox(
                          width: 10,
                        ),
                        CustomContainerResultScreen(
                            text: "Cafe",
                            horizontalPadding: 10,
                            verticalPadding: 6),
                        SizedBox(
                          width: 10,
                        ),
                        CustomContainerResultScreen(
                            text: "Indian",
                            horizontalPadding: 10,
                            verticalPadding: 6),
                        SizedBox(
                          width: 10,
                        ),
                        CustomContainerResultScreen(
                            text: "International",
                            horizontalPadding: 8,
                            verticalPadding: 6),
                        SizedBox(
                          width: 10,
                        ),
                        CustomContainerResultScreen(
                            text: "Middile Easter",
                            horizontalPadding: 10,
                            verticalPadding: 6),
                        SizedBox(
                          width: 10,
                        ),
                        CustomContainerResultScreen(
                            text: "All Resturants",
                            horizontalPadding: 10,
                            verticalPadding: 6)
                      ],
                    ),
                  ),
                )),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25,
                ),
                CustomText(
                    mainText: "The essentials",
                    subText:
                        "Quintessential Dubai resturants,bars,\nand beyond"),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 320,
                  child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) =>
                          CustomResturantCardDetails(
                              resturantResultModel:
                                  ResturantController.cardResturantList[index]),
                      separatorBuilder: (context, index) => SizedBox(
                            width: 18,
                          ),
                      itemCount: ResturantController.cardResturantList.length),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Reserve a Table",
                        style: TextStyle(
                            color: ColorConstant.primaryBlack,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        "See all",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: ColorConstant.primaryBlack,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 320,
                  child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) =>
                          CustomResturantCardDetails(
                              resturantResultModel: ResturantController
                                  .cardResturantReserveList[index]),
                      separatorBuilder: (context, index) => SizedBox(
                            width: 18,
                          ),
                      itemCount:
                          ResturantController.cardResturantReserveList.length),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Delivery",
                        style: TextStyle(
                            color: ColorConstant.primaryBlack,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        "See all",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: ColorConstant.primaryBlack,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 350,
                  child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) =>
                          CustomResturantCardDetails(
                              resturantResultModel:
                                  ResturantController.cardResturantList[index]),
                      separatorBuilder: (context, index) => SizedBox(
                            width: 18,
                          ),
                      itemCount:
                          ResturantController.cardResturantReserveList.length),
                ),
              ],
            ),
          )),
    );
  }
}
