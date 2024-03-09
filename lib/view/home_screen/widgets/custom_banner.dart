import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trip_advisor/core/constants/color_constants.dart';

import 'package:trip_advisor/view/home_screen/widgets/custom_elevated_button.dart';

class CustomBanner extends StatelessWidget {
  CustomBanner(
      {super.key,
      required this.bannerImage,
      this.text1 = "",
      this.text2 = "",
      this.text3 = "",
      required this.buttonText,
      this.onPressed});

  final String bannerImage;
  final String text1;
  final String text2;
  final String text3;
  final String buttonText;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 500,
          width: 600,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(bannerImage), fit: BoxFit.cover, scale: 1),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 250, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text1,
                style: TextStyle(
                    color: ColorConstant.primaryWhite,
                    fontSize: 34,
                    fontWeight: FontWeight.bold),
              ),
              Text(text2,
                  style: TextStyle(
                      color: ColorConstant.primaryWhite,
                      fontSize: 34,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 10,
              ),
              Text(
                text3,
                style: GoogleFonts.abrilFatface(
                  textStyle: TextStyle(
                      color: ColorConstant.primaryWhite,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomElevatedButton(
                text: buttonText,
                onPressed: onPressed,
              )
            ],
          ),
        )
      ],
    );
  }
}
