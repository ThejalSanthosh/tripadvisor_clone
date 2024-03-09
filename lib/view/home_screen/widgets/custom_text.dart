import 'package:flutter/cupertino.dart';
import 'package:trip_advisor/core/constants/color_constants.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.mainText, required this.subText});

  final String mainText;

  final String subText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            mainText,
            style: TextStyle(
                color: ColorConstant.primaryBlack,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          Text(
            subText,
            style: TextStyle(
              color: ColorConstant.primaryBlack,
              fontSize: 17,
            ),
          )
        ],
      ),
    );
  }
}
