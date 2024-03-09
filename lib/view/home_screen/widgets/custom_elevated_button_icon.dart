import 'package:flutter/material.dart';
import 'package:trip_advisor/core/constants/color_constants.dart';

class CustomElevatedButtIcon extends StatelessWidget {
  const CustomElevatedButtIcon(
      {super.key,
      required this.label,
      required this.icons,
      this.onPressed,
      this.verticalPadding = 0,
      this.horizontalPadding = 0});

  final String label;
  final Icon icons;
  final void Function()? onPressed;
  final double verticalPadding;
  final double horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding, vertical: horizontalPadding),
        height: 55,
        width: 160,
        child: ElevatedButton.icon(
          onPressed: onPressed,
          icon: icons,
          label: Text(
            label,
            style: TextStyle(
            
                color: ColorConstant.primaryBlack,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
        ));
  }
}
