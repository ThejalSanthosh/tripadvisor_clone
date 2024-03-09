import 'package:flutter/material.dart';
import 'package:trip_advisor/core/constants/color_constants.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key,
      this.buttonColor = ColorConstant.primaryWhite,
      this.textColor = ColorConstant.primaryBlack,
      required this.text,
      this.onPressed,
      this.icon});
  final String text;
  final Color textColor;
  final Color buttonColor;
  final void Function()? onPressed;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: icon == null ? 0 : null,
        ),
        label: Text(
          text,
          style: TextStyle(
            color: ColorConstant.primaryBlack,
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
        ));
  }
}
