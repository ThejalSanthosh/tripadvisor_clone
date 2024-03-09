import 'package:bottom_navbar_with_indicator/bottom_navbar_with_indicator.dart';
import 'package:flutter/material.dart';
import 'package:trip_advisor/core/constants/color_constants.dart';
import 'package:trip_advisor/view/home_screen/home_screen.dart';
import 'package:trip_advisor/view/plan_screen/plan_screen.dart';
import 'package:trip_advisor/view/search_screen/search_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  List screenLists = [
    HomeScreen(),
    SearchScreen(),
    PlanScreen(),
    Container(
      color: Colors.black,
    ),
    Container(
      color: Colors.blueGrey,
    )
  ];

  int bottomIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenLists[bottomIndex],
      bottomNavigationBar: CustomLineIndicatorBottomNavbar(
          enableLineIndicator: true,
          selectedColor: ColorConstant.primaryBlack,
          lineIndicatorWidth: 4,
          indicatorType: IndicatorType.top,
          selectedFontSize: 15,
          unselectedFontSize: 15,
          selectedIconSize: 20,
          unselectedIconSize: 20,
          onTap: (value) {
            bottomIndex = value;

            setState(() {});
          },
          currentIndex: bottomIndex,
          customBottomBarItems: [
            CustomBottomBarItems(icon: Icons.home_filled, label: "Explore"),
            CustomBottomBarItems(icon: Icons.search, label: "Search"),
            CustomBottomBarItems(icon: Icons.favorite_border, label: "Plan"),
            CustomBottomBarItems(
                icon: Icons.mode_edit_outline_outlined, label: "Review"),
            CustomBottomBarItems(
                icon: Icons.account_circle_outlined, label: "Account")
          ]),
    );
  }
}
