import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trip_advisor/core/constants/color_constants.dart';
import 'package:trip_advisor/view/home_screen/widgets/custom_elevated_button_icon.dart';
import 'package:trip_advisor/view/plan_screen/widgets/custom_icon_buttom.dart';
import 'package:trip_advisor/view/plan_screen/widgets/custom_text_underline.dart';
import 'package:trip_advisor/view/plan_screen/widgets/custom_trip_card.dart';

class CustomTripTab extends StatelessWidget {
  const CustomTripTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTripCard(
            icon: Icons.add_location_alt_outlined,
            text: "Get personalized recs AI"),
        SizedBox(
          height: 25,
        ),
        CustomTripCard(
            icon: Icons.favorite_border,
            text: "Save hotels,resturants and more"),
        SizedBox(
          height: 25,
        ),
        CustomTripCard(
            icon: Icons.map_sharp, text: "See your saves on your custom map"),
        SizedBox(
          height: 25,
        ),
        CustomTripCard(
            icon: Icons.person_3_outlined,
            text: "Share and collab with your travel buds"),
        SizedBox(
          height: 35,
        ),
        CustomPlanIconButton(
          icon: Icons.add,
          text: "Create a Trip",
          buttonColor: ColorConstant.primaryBlack,
          textColor: ColorConstant.primaryWhite,
          iconColor: ColorConstant.primaryWhite,
          verticalpadding: 16,
          horizontalPadding: 60,
        ),
        SizedBox(
          height: 14,
        ),
        CustomPlanIconButton(
          icon: Icons.add_location_alt_outlined,
          text: "Build a trip with AI",
          buttonColor: Color.fromARGB(255, 241, 197, 236),
          textColor: ColorConstant.primaryBlack,
          iconColor: ColorConstant.primaryBlack,
          verticalpadding: 16,
          horizontalPadding: 60,
        ),
        SizedBox(
          height: 10,
        ),
        CustomTextUnderLined(text: "Login in to access your Trips")
      ],
    );
  }
}
