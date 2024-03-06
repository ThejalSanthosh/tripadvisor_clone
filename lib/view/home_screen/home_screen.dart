import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trip_advisor/core/constants/color_constants.dart';
import 'package:trip_advisor/core/constants/image_constants.dart';
import 'package:trip_advisor/view/dummy_db.dart';
import 'package:trip_advisor/view/global_widgets/custom_card_details.dart';
import 'package:trip_advisor/view/global_widgets/custom_card_place_details.dart';
import 'package:trip_advisor/view/home_screen/widgets/custom_banner.dart';
import 'package:trip_advisor/view/home_screen/widgets/custom_elevated_button.dart';
import 'package:trip_advisor/view/home_screen/widgets/custom_elevated_button_icon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: ColorConstant.primaryGreen,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.account_circle_outlined,
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          Icon(Icons.add_shopping_cart_sharp),
                        ],
                      ),
                      Text(
                        "Explore",
                        style: TextStyle(
                            color: ColorConstant.primaryBlack,
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomElevatedButtIcon(
                              onPressed: () {},
                              label: "Hotels",
                              icons: Icon(
                                Icons.hotel,
                                color: ColorConstant.primaryBlack,
                              )),
                          CustomElevatedButtIcon(
                              onPressed: () {},
                              label: "Things to do",
                              icons: Icon(Icons.calendar_month,
                                  color: ColorConstant.primaryBlack))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CustomElevatedButtIcon(
                                onPressed: () {},
                                label: "Resturants",
                                icons: Icon(Icons.restaurant,
                                    color: ColorConstant.primaryBlack)),
                            CustomElevatedButtIcon(
                                onPressed: () {},
                                label: "Forums",
                                icons: Icon(Icons.message,
                                    color: ColorConstant.primaryBlack))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 15,
              ),

              //  Banner 1

              CustomBanner(
                bannerImage: ImageConstant.banner,
                buttonText: "Try it",
                text1: "Build a trip in",
                text2: "minutes with AI",
                text3:
                    "Kick-start your travel planning with a\ncustom itinerary guided by reviews.",
                onPressed: () {},
              ),

              SizedBox(
                height: 40,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 35, vertical: 25),
                      decoration: BoxDecoration(
                          color: ColorConstant.secondaryGreen,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Text(
                            "Discover more in Crystal River",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: ColorConstant.primaryWhite,
                                fontSize: 34,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CustomElevatedButton(
                            text: "Keep exploring",
                            buttonColor: ColorConstant.secondaryGreen,
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    Text(
                      "You might like these",
                      style: TextStyle(
                          color: ColorConstant.primaryBlack,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "More things to do in Crystal River",
                      style: TextStyle(
                        color: ColorConstant.primaryBlack,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 330,
                      child: ListView.separated(
                          padding: EdgeInsets.only(right: 18),
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) => CustomCardDetails(
                              spotDest: DummyDb.cardDetailsRiver[index]
                                  ["spotDest"],
                              placeName: DummyDb.cardDetailsRiver[index]
                                  ["placeName"],
                              circleCount: DummyDb.cardDetailsRiver[index]
                                  ["circleCount"],
                              reviewsCount: DummyDb.cardDetailsRiver[index]
                                  ["reviewsCount"],
                              picUrl: DummyDb.cardDetailsRiver[index]["pic"]),
                          separatorBuilder: (context, index) => SizedBox(
                                width: 18,
                              ),
                          itemCount: DummyDb.cardDetailsRiver.length),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),

              // --BANNER 2

              CustomBanner(
                bannerImage: ImageConstant.banner2,
                buttonText: "Pack your bags",
                onPressed: () {},
                text1: "Where to go in",
                text2: "April",
                text3: "From spring break recs to \nshoulder-season deals",
              ),

              SizedBox(
                height: 40,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Find the perfect sakura viewing spot",
                      style: TextStyle(
                          color: ColorConstant.primaryBlack,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                        "These parks and gardens are great for a picnic under the cherry trees",
                        style: TextStyle(
                          color: ColorConstant.primaryBlack,
                          fontSize: 17,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 330,
                      child: ListView.separated(
                          padding: EdgeInsets.only(right: 18),
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) => CustomCardDetails(
                              spotDest: DummyDb.cardDetailsSakuraViewing[index]
                                  ["spotDest"],
                              placeName: DummyDb.cardDetailsSakuraViewing[index]
                                  ["placeName"],
                              circleCount:
                                  DummyDb.cardDetailsSakuraViewing[index]
                                      ["circleCount"],
                              reviewsCount:
                                  DummyDb.cardDetailsSakuraViewing[index]
                                      ["reviewsCount"],
                              picUrl: DummyDb.cardDetailsSakuraViewing[index]
                                  ["pic"]),
                          separatorBuilder: (context, index) => SizedBox(
                                width: 18,
                              ),
                          itemCount: DummyDb.cardDetailsSakuraViewing.length),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Countdown to spring break",
                      style: TextStyle(
                          color: ColorConstant.primaryBlack,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("All the best places to spend your week off",
                        style: TextStyle(
                          color: ColorConstant.primaryBlack,
                          fontSize: 17,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 195,
                      child: ListView.separated(
                          padding: EdgeInsets.only(right: 18),
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) =>
                              CustomCardPlaceDetails(
                                  image: DummyDb.cardDetailsPlaces[index]
                                      ["pic"],
                                  place: DummyDb.cardDetailsPlaces[index]
                                      ["placeName"]),
                          separatorBuilder: (context, index) => SizedBox(
                                width: 18,
                              ),
                          itemCount: DummyDb.cardDetailsPlaces.length),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),

              // --- Banner -3

              CustomBanner(
                bannerImage: ImageConstant.banner3,
                buttonText: "Check it out",
                onPressed: () {},
                text1: "Orlando,beyond",
                text2: "the theme parks",
                text3:
                    "Boat trips,art museums,and more\nkid-approved adventures",
              ),
              SizedBox(
                height: 40,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 35, vertical: 25),
                  decoration: BoxDecoration(
                      color: ColorConstant.secondaryGreen,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Text(
                        "Is Tripadvisor missing a place",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: ColorConstant.primaryWhite,
                            fontSize: 34,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomElevatedButton(
                        icon: Icons.location_on,
                        text: "Add a missing place",
                        buttonColor: ColorConstant.secondaryGreen,
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 45,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
