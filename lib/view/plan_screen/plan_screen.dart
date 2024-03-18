import 'package:bottom_navbar_with_indicator/bottom_navbar_with_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trip_advisor/core/constants/color_constants.dart';
import 'package:trip_advisor/view/plan_screen/tabs/custom_save_tab.dart';
import 'package:trip_advisor/view/plan_screen/tabs/custom_trip_tab.dart';
import 'package:trip_advisor/view/plan_screen/widgets/custom_trip_card.dart';

class PlanScreen extends StatefulWidget {
  const PlanScreen({super.key});

  @override
  State<PlanScreen> createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Get to know trips",
                    style: TextStyle(
                        color: ColorConstant.primaryBlack,
                        fontWeight: FontWeight.bold,
                        fontSize: 26),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontSize: 16,
                          color: ColorConstant.primaryBlack.withOpacity(.8)),
                      "Now there's two ways to plan your trip use AI or search on your own. Either way,you've got more than 8 million sports to discover,with over one billion traveler reviews and opinions to guide you."),
                  SizedBox(
                    height: 25,
                  ),
                  TabBar(
                      isScrollable: true,
                      tabAlignment: TabAlignment.start,
                      dividerHeight: 0,
                      indicatorColor: ColorConstant.primaryBlack,
                      labelColor: ColorConstant.primaryBlack,
                      unselectedLabelColor:
                          ColorConstant.primaryBlack.withOpacity(.6),
                      tabs: [
                        Tab(
                          text: "Trips",
                        ),
                        Tab(
                          text: "Saves",
                        )
                      ]),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    height:
                        MediaQuery.sizeOf(context).height - kToolbarHeight - 40,
                    child: TabBarView(
                        children: [CustomTripTab(), CustomSaveTab()]),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
