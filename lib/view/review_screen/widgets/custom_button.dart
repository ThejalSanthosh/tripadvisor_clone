import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trip_advisor/core/constants/color_constants.dart';

class CustomReviewButton extends StatelessWidget {
  const CustomReviewButton({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            side: BorderSide(color: ColorConstant.primaryBlack, width: 2),
            backgroundColor: ColorConstant.primaryWhite),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
              color: ColorConstant.primaryBlack,
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ));
  }
}
