import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trip_advisor/core/constants/color_constants.dart';

class CustomIconText extends StatelessWidget {
  const CustomIconText(
      {super.key,
      required this.icon,
      required this.mainText,
      this.subText = ""});

  final IconData icon;
  final String mainText;
  final String subText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          decoration: BoxDecoration(
              color: ColorConstant.secondayGrey.withOpacity(.3),
              borderRadius: BorderRadius.circular(6)),
          child: Icon(
            icon,
            size: 30,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(mainText,
                style: TextStyle(
                    color: ColorConstant.primaryBlack,
                    fontWeight: FontWeight.w600,
                    fontSize: 18)),
            SizedBox(
              height: 3,
            ),
            subText != ""
                ? Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    subText,
                    style: TextStyle(
                        color: ColorConstant.primaryBlack.withOpacity(.6),
                        fontWeight: FontWeight.normal,
                        fontSize: 12))
                : SizedBox(),
          ],
        )
      ],
    );
  }
}
