import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trip_advisor/core/constants/color_constants.dart';

class CustomCardDetails extends StatelessWidget {
  const CustomCardDetails(
      {super.key,
      required this.picUrl,
      required this.placeName,
      required this.circleCount,
      required this.reviewsCount,
      required this.spotDest});

  final String picUrl;
  final String placeName;
  final int circleCount;
  final int reviewsCount;
  final String spotDest;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: 190,
              width: 220,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(picUrl), fit: BoxFit.cover)),
            ),
            Positioned(
                top: 10,
                right: 10,
                child: CircleAvatar(
                  radius: 20,
                  child: Icon(Icons.favorite_border),
                )),
          ],
        ),
        Container(
          width: 220,
          child: Text(
            placeName,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
            style: TextStyle(
                color: ColorConstant.primaryBlack,
                fontWeight: FontWeight.w500,
                fontSize: 18),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            ...List.generate(
                circleCount,
                (index) => Padding(
                      padding: const EdgeInsets.all(1),
                      child: CircleAvatar(
                        radius: 7,
                        backgroundColor: ColorConstant.primaryGreen,
                      ),
                    )),
            SizedBox(
              width: 8,
            ),
            Text(
              reviewsCount.toString(),
              style: TextStyle(
                  color: ColorConstant.primaryBlack.withOpacity(.6),
                  fontSize: 14),
            ),
          ],
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          spotDest,
          style: TextStyle(
              color: ColorConstant.primaryBlack, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
