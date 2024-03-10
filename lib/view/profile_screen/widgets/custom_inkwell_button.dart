import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trip_advisor/core/constants/color_constants.dart';

class CustomProfileInkwellButton extends StatelessWidget {
  const CustomProfileInkwellButton(
      {super.key,
      required this.icon,
      required this.text,
      required this.icon2,
      this.onTap});

  final IconData icon;
  final String text;
  final IconData icon2;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Icon(icon),
          SizedBox(
            width: 15,
          ),
          Text(
            text,
            style: TextStyle(
                color: ColorConstant.primaryBlack,
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
          Spacer(),
          Icon(icon2)
        ],
      ),
    );
  }
}
