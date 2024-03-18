import 'package:flutter/material.dart';
import 'package:trip_advisor/core/constants/color_constants.dart';

class CustomContainerResultScreen extends StatelessWidget {
  const CustomContainerResultScreen(
      {super.key,
      required this.text,
      this.buttonColor = ColorConstant.primaryWhite,
      this.textColor = ColorConstant.primaryBlack,
      this.onPressed,
      this.icon,
      required this.verticalPadding,
      required this.horizontalPadding});
  final String text;
  final Color buttonColor;
  final double verticalPadding;
  final double horizontalPadding;
  final Color textColor;
  final void Function()? onPressed;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical: verticalPadding, horizontal: horizontalPadding),
          decoration: BoxDecoration(
              color: buttonColor,
              border: Border.all(color: ColorConstant.primaryBlack, width: 2),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              if (icon != null) ...[
                Icon(
                  color: ColorConstant.primaryBlack,
                  icon,
                  size: icon == null ? 0 : null,
                ),
                SizedBox(
                  width: 5,
                )
              ],
              Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
