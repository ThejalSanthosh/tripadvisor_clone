import 'package:flutter/material.dart';
import 'package:trip_advisor/core/constants/color_constants.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton(
      {super.key,
      this.buttonColor = ColorConstant.primaryWhite,
      this.textColor = ColorConstant.primaryBlack,
      required this.text,
      this.onPressed,
      this.icon,
      this.havBorder = false});
  final String text;
  final Color textColor;
  final Color buttonColor;
  final void Function()? onPressed;
  final IconData? icon;
  final bool havBorder;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            side: havBorder == true
                ? BorderSide(color: ColorConstant.primaryWhite, width: 2)
                : null),
        onPressed: onPressed,
        icon: Icon(
          color: ColorConstant.primaryWhite,
          icon,
          size: icon == null ? 0 : null,
        ),
        label: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
        ));
  }
}
