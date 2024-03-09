import 'package:flutter/cupertino.dart';
import 'package:trip_advisor/core/constants/color_constants.dart';

class CustomTextUnderLined extends StatelessWidget {
  const CustomTextUnderLined({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            decoration: TextDecoration.underline,
            color: ColorConstant.primaryBlack,
            fontSize: 16,
            fontWeight: FontWeight.w500));
  }
}
