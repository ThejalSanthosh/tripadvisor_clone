import 'package:bottom_navbar_with_indicator/bottom_navbar_with_indicator.dart';
import 'package:flutter/material.dart';
import 'package:trip_advisor/core/constants/color_constants.dart';
import 'package:trip_advisor/view/home_screen/home_screen.dart';
import 'package:trip_advisor/view/plan_screen/plan_screen.dart';
import 'package:trip_advisor/view/profile_screen/profile_screen.dart';
import 'package:trip_advisor/view/review_screen/review_screen.dart';
import 'package:trip_advisor/view/search_screen/search_screen.dart';

class BottomNavScreen extends StatefulWidget {
  BottomNavScreen({super.key, this.childScreen});
  Widget? childScreen;
  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  late List screenLists;
  Widget? childScreen;
  int bottomIndex = 0;

  @override
  void initState() {
    childScreen = widget.childScreen;
    generatePages();

    super.initState();
  }

  List<dynamic> generatePages() {
    return screenLists = [
      childScreen ?? HomeScreen(),
      SearchScreen(),
      PlanScreen(),
      ReviewScreen(),
      ProfileScreen()
    ];
  }

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
            if (childScreen != null && bottomIndex == 0 && value == 0) {
              childScreen = null;
              generatePages();
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BottomNavScreen(),
                  ),
                  (route) => false);
            }
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
