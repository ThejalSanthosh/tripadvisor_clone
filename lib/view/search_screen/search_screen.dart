import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trip_advisor/core/constants/color_constants.dart';
import 'package:trip_advisor/view/dummy_db.dart';
import 'package:trip_advisor/view/global_widgets/custom_card_details.dart';
import 'package:trip_advisor/view/global_widgets/custom_card_place_details.dart';
import 'package:trip_advisor/view/home_screen/widgets/custom_elevated_button.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Search",
                      style: TextStyle(
                          color: ColorConstant.primaryBlack,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      onTap: () {},
                      decoration: InputDecoration(
                          isDense: true,
                          filled: true,
                          fillColor: Colors.transparent,
                          prefixIcon: Icon(Icons.search),
                          hintText: "Where to?",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1,
                                  color: ColorConstant.primaryBlack
                                      .withOpacity(.1)),
                              borderRadius: BorderRadius.circular(60))),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 35, vertical: 25),
                      decoration: BoxDecoration(
                          color: ColorConstant.secondaryGreen,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Text(
                            "See what's good nearby.",
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
                            text: "Turn on location settings",
                            buttonColor: ColorConstant.secondaryGreen,
                            havBorder: true,
                            textColor: ColorConstant.primaryWhite,
                            verticalPadding: 10,
                            horizontalPadding: 30,
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Top experiences on\nTripadvisor",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: ColorConstant.primaryBlack),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 330,
                child: ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => CustomCardDetails(
                        spotDest: DummyDb.cardDetailsTopExperience[index]
                            ["spotDest"],
                        placeName: DummyDb.cardDetailsTopExperience[index]
                            ["placeName"],
                        circleCount: DummyDb.cardDetailsTopExperience[index]
                            ["circleCount"],
                        reviewsCount: DummyDb.cardDetailsTopExperience[index]
                            ["reviewsCount"],
                        picUrl: DummyDb.cardDetailsTopExperience[index]["pic"]),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 18,
                        ),
                    itemCount: DummyDb.cardDetailsTopExperience.length),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Destinations travellers love",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: ColorConstant.primaryBlack),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: DummyDb.cardDetailsPlaces.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                            crossAxisCount: 2),
                        itemBuilder: (context, index) => CustomCardPlaceDetails(
                            image: DummyDb.cardDetailsPlaces[index]["pic"],
                            place: DummyDb.cardDetailsPlaces[index]
                                ["placeName"])),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
