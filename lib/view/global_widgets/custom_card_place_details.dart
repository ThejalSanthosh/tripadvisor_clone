import 'package:flutter/cupertino.dart';
import 'package:trip_advisor/core/constants/color_constants.dart';

class CustomCardPlaceDetails extends StatelessWidget {
  const CustomCardPlaceDetails(
      {super.key, required this.image, required this.place});

  final String image;
  final String place;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 190,
          width: 220,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.cover)),
        ),
        Positioned(
            bottom: 10,
            left: 10,
            child: Container(
              width: 150,
              child: Text(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.justify,
                place,
                style: TextStyle(
                    color: ColorConstant.primaryWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ))
      ],
    );
  }
}
