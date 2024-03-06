import 'package:flutter/material.dart';
import 'package:trip_advisor/core/constants/color_constants.dart';
import 'package:trip_advisor/view/home_screen/home_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  List screenLists = [
    HomeScreen(),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.green,
    ),
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
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: ColorConstant.primaryBlack,
          useLegacyColorScheme: true,
          onTap: (value) {
            bottomIndex = value;

            setState(() {});
          },
          currentIndex: bottomIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Explore"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: "Plan"),
            BottomNavigationBarItem(
                icon: Icon(Icons.mode_edit_outline_outlined), label: "Review"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: "Account")
          ]),
    );
  }
}
