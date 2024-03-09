import 'package:flutter/cupertino.dart';
import 'package:trip_advisor/core/constants/color_constants.dart';
import 'package:trip_advisor/view/plan_screen/widgets/custom_text_underline.dart';

class CustomSaveTab extends StatelessWidget {
  const CustomSaveTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "No Saves yet",
          style: TextStyle(
              color: ColorConstant.primaryBlack,
              fontWeight: FontWeight.bold,
              fontSize: 16),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Places you save will appear here",
          style: TextStyle(
              color: ColorConstant.primaryBlack.withOpacity(.7), fontSize: 17),
        ),
        SizedBox(
          height: 30,
        ),
        CustomTextUnderLined(text: "Login to access your saves")
      ],
    );
  }
}
