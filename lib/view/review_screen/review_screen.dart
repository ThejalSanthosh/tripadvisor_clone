import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trip_advisor/core/constants/color_constants.dart';
import 'package:trip_advisor/core/constants/image_constants.dart';
import 'package:trip_advisor/view/home_screen/widgets/custom_banner.dart';
import 'package:trip_advisor/view/home_screen/widgets/custom_elevated_button.dart';
import 'package:trip_advisor/view/plan_screen/widgets/custom_icon_buttom.dart';
import 'package:trip_advisor/view/review_screen/widgets/custom_button.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Review",
                      style: TextStyle(
                          color: ColorConstant.primaryBlack,
                          fontWeight: FontWeight.bold,
                          fontSize: 28),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "No reviews yet",
                      style: TextStyle(
                          color: ColorConstant.primaryBlack,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "You have not written any reviews yet,get\nstarted!",
                      style: TextStyle(
                          color: ColorConstant.primaryBlack.withOpacity(.8),
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomReviewButton(text: "Write a review"),
                        SizedBox(
                          width: 10,
                        ),
                        CustomReviewButton(text: "Upload a photo")
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              CustomBanner(
                bannerImage: ImageConstant.banner4,
                buttonText: "What to know",
                onPressed: () {},
                text1: "We want you to",
                text2: "Write us a review",
                text3: "Because who else would we turn to for\ntravel advice?",
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Is Trip Advisor missing a place?",
                style: TextStyle(
                    color: ColorConstant.primaryBlack,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Text(
                "Tell us about it so we can improve what we\nshow",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: BorderSide(
                          color: ColorConstant.primaryBlack, width: 2),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 50)),
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_location_alt_outlined,
                    color: ColorConstant.primaryBlack,
                  ),
                  label: Text(
                    "Add a missing place",
                    style: TextStyle(
                      color: ColorConstant.primaryBlack,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: ColorConstant.primaryBlack,
          shape: CircleBorder(),
          child: Icon(
            Icons.add,
            color: ColorConstant.primaryWhite,
            size: 28,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
