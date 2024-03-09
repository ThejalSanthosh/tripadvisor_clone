import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trip_advisor/core/constants/color_constants.dart';

class CustomPlanIconButton extends StatelessWidget {
  const CustomPlanIconButton(
      {super.key,
      required this.icon,
      required this.text,
      this.onPressed,
      this.buttonColor = ColorConstant.primaryWhite,
      this.textColor = ColorConstant.primaryBlack,
      this.verticalpadding = 0,
      this.horizontalPadding = 0,
      this.iconColor = ColorConstant.primaryWhite});

  final IconData icon;
  final String text;
  final void Function()? onPressed;
  final Color buttonColor;
  final Color textColor;
  final double verticalpadding;
  final double horizontalPadding;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
      onPressed: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: verticalpadding, horizontal: horizontalPadding),
        child: Row(
          children: [
            Icon(
              icon,
              color: iconColor,
              size: 24,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: TextStyle(color: textColor, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
