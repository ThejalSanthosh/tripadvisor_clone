import 'package:flutter/cupertino.dart';
import 'package:trip_advisor/core/constants/color_constants.dart';

class CustomTripCard extends StatelessWidget {
  CustomTripCard({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      width: 1,
                      color: ColorConstant.primaryBlack.withOpacity(.4)),
                ),
                child: Icon(icon)),
            SizedBox(
              width: 15,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 16),
            )
          ],
        )
      ],
    );
  }
}
