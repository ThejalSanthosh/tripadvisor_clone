import 'package:flutter/material.dart';
import 'package:trip_advisor/core/constants/color_constants.dart';

class PersonSelectionTab extends StatelessWidget {
  const PersonSelectionTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 18),
            child: Row(
              children: [
                Text(
                  "Rooms",
                  style: TextStyle(
                      color: ColorConstant.primaryBlack,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorConstant.primaryBlack.withOpacity(.1)),
                  child: Center(
                    child: Icon(Icons.minimize_outlined,
                        color: ColorConstant.primaryBlack.withOpacity(.3)),
                  ),
                ),
                SizedBox(
                  width: 13,
                ),
                Text(
                  "1",
                  style: TextStyle(
                      color: ColorConstant.primaryBlack,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 13,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorConstant.primaryBlack),
                  child: Center(
                    child: Icon(Icons.add, color: ColorConstant.primaryWhite),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 18),
            child: Row(
              children: [
                Text(
                  "Adults",
                  style: TextStyle(
                      color: ColorConstant.primaryBlack,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorConstant.primaryBlack),
                  child: Center(
                    child: Icon(Icons.minimize_outlined,
                        color: ColorConstant.primaryWhite),
                  ),
                ),
                SizedBox(
                  width: 13,
                ),
                Text(
                  "2",
                  style: TextStyle(
                      color: ColorConstant.primaryBlack,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 13,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorConstant.primaryBlack),
                  child: Center(
                    child: Icon(Icons.add, color: ColorConstant.primaryWhite),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 18),
            child: Row(
              children: [
                Text(
                  "Children",
                  style: TextStyle(
                      color: ColorConstant.primaryBlack,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorConstant.primaryBlack),
                  child: Center(
                    child: Icon(Icons.minimize_outlined,
                        color: ColorConstant.primaryWhite),
                  ),
                ),
                SizedBox(
                  width: 13,
                ),
                Text(
                  "0",
                  style: TextStyle(
                      color: ColorConstant.primaryBlack,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 13,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorConstant.primaryBlack),
                  child: Center(
                    child: Icon(Icons.add, color: ColorConstant.primaryWhite),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
