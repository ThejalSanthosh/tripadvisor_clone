import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trip_advisor/core/constants/color_constants.dart';
import 'package:trip_advisor/model/resturant_result_model.dart';

class CustomResturantCardDetails extends StatelessWidget {
  const CustomResturantCardDetails({
    super.key,
    required this.resturantResultModel,
  });

  final ResturantResultModel resturantResultModel;
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
                      image: AssetImage(resturantResultModel.pic),
                      fit: BoxFit.cover)),
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
            resturantResultModel.placeName,
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
                resturantResultModel.circleCount,
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
              resturantResultModel.reviewsCount,
              style: TextStyle(
                  color: ColorConstant.primaryBlack.withOpacity(.6),
                  fontSize: 14),
            ),
          ],
        ),
        SizedBox(
          height: 6,
        ),
        Container(
          width: 220,
          child: Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            resturantResultModel.spotDest,
            style: TextStyle(
                color: ColorConstant.primaryBlack, fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
