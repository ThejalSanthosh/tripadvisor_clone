import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trip_advisor/core/constants/color_constants.dart';
import 'package:trip_advisor/view/bottom_nav_screen/bottom_nav_screen.dart';
import 'package:trip_advisor/view/home_screen/home_screen.dart';
import 'package:trip_advisor/view/home_screen/hotel_button_screen/hotel_result_screen/hotel_result_screen.dart';
import 'package:trip_advisor/view/home_screen/hotel_button_screen/widgets/custom_icon_text.dart';
import 'package:trip_advisor/view/home_screen/resturant_screen/resturant_screen.dart';

class HotelButtonscreen extends StatefulWidget {
  HotelButtonscreen({super.key, required this.screenSelection});

  final String screenSelection;

  @override
  State<HotelButtonscreen> createState() => _HotelButtonscreenState();
}

class _HotelButtonscreenState extends State<HotelButtonscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 30, bottom: 10, left: 20, right: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomNavScreen(
                              childScreen: HomeScreen(),
                            ),
                          ),
                          (route) => false);
                    },
                    child: Icon(
                      Icons.keyboard_arrow_left,
                      size: 33,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      onTap: () {},
                      decoration: InputDecoration(
                          isDense: true,
                          filled: true,
                          fillColor: Colors.transparent,
                          prefixIcon: Icon(
                            Icons.search,
                            size: 25,
                            color: ColorConstant.primaryBlack,
                          ),
                          hintText: "Where to?",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1,
                                  color: ColorConstant.primaryBlack
                                      .withOpacity(.1)),
                              borderRadius: BorderRadius.circular(60))),
                    ),
                  )
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomIconText(
                      icon: Icons.near_me_outlined,
                      mainText: "${widget.screenSelection} nearby"),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Popular Destinations",
                    style: TextStyle(
                        color: ColorConstant.primaryBlack,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  InkWell(
                    onTap: () {
                      
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomNavScreen(
                              childScreen: screenSelection(),
                            ),
                          ));
                    },
                    child: CustomIconText(
                      icon: Icons.location_on_outlined,
                      mainText: "Dubai",
                      subText: "Emirates of Dubai,United Arab\nEmirates",
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  CustomIconText(
                    icon: Icons.location_on_outlined,
                    mainText: "London",
                    subText: "England,United Kingdom",
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  CustomIconText(
                    icon: Icons.location_on_outlined,
                    mainText: "Istanbul",
                    subText: "Turkiye,Europe",
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  CustomIconText(
                    icon: Icons.location_on_outlined,
                    mainText: "New York City",
                    subText: "New York,United States",
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  CustomIconText(
                    icon: Icons.location_on_outlined,
                    mainText: "Paris",
                    subText: "lle-de-France,France",
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget screenSelection() {
    if (widget.screenSelection == "Hotels") {
     return  HotelResultScreen();
    } else if (widget.screenSelection == "Resturants") {
    return  ResturantResultScreen();
    }

    return BottomNavScreen();
  }
}
