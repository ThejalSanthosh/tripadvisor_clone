import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trip_advisor/controller/hotel_result_controller.dart';
import 'package:trip_advisor/core/constants/color_constants.dart';
import 'package:trip_advisor/view/home_screen/hotel_button_screen/hotel_button_screen.dart';
import 'package:trip_advisor/view/home_screen/hotel_button_screen/hotel_result_screen/tabs/calender_tab.dart';
import 'package:trip_advisor/view/home_screen/hotel_button_screen/hotel_result_screen/tabs/person_selection_tab.dart';
import 'package:trip_advisor/view/home_screen/hotel_button_screen/hotel_result_screen/widgets/custom_container_result_screen.dart';
import 'package:trip_advisor/view/home_screen/hotel_button_screen/hotel_result_screen/widgets/custom_hotel_search_result.dart';

class HotelResultScreen extends StatefulWidget {
  const HotelResultScreen({super.key});

  @override
  State<HotelResultScreen> createState() => _HotelResultScreenState();
}

class _HotelResultScreenState extends State<HotelResultScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      show_ModalBottomSheet(context);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HotelButtonscreen(
                        screenSelection: "Hotels",
                      ),
                    ),
                    (route) => false);
              },
              icon: Icon(
                Icons.keyboard_arrow_left,
                size: 33,
              )),
          title: Text(
            "Dubai Hotels and Places to Stay",
            style: TextStyle(
                color: ColorConstant.primaryBlack,
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: ColorConstant.primaryBlack,
                size: 28,
              ),
            ),
            SizedBox(
              width: 10,
            )
          ],
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomContainerResultScreen(
                    onPressed: () {},
                    buttonColor: ColorConstant.primaryBlack,
                    textColor: ColorConstant.primaryWhite,
                    text: "Map",
                    horizontalPadding: 10,
                    verticalPadding: 6,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomContainerResultScreen(
                      onPressed: () {
                        show_ModalBottomSheet(context);
                      },
                      text: "Mar 13-14",
                      horizontalPadding: 10,
                      verticalPadding: 6),
                  SizedBox(
                    width: 10,
                  ),
                  CustomContainerResultScreen(
                      onPressed: () {
                        show_ModalBottomSheet(context, initalTabIndex: 1);
                      },
                      icon: Icons.group_sharp,
                      text: "2",
                      horizontalPadding: 10,
                      verticalPadding: 6),
                  SizedBox(
                    width: 10,
                  ),
                  CustomContainerResultScreen(
                      icon: Icons.tune,
                      text: "Filters",
                      horizontalPadding: 10,
                      verticalPadding: 6)
                ],
              )),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                            text: "1,000+1,000 of places are available, ",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                            children: [
                              TextSpan(
                                  text: "sorted by ",
                                  style: TextStyle(color: Colors.black)),
                              TextSpan(
                                  text: "best value",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.black))
                            ]),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Icon(Icons.info_outline)
                  ],
                ),
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => CustomHotelSearchResult(
                      hotelResultModel:
                          HotelResultController.hotelSearchResList[index]),
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: HotelResultController.hotelSearchResList.length)
            ],
          ),
        ),
      ),
    );
  }

  void show_ModalBottomSheet(BuildContext context, {int initalTabIndex = 0}) {
    showModalBottomSheet(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, bottomSetState) => DefaultTabController(
          initialIndex: initalTabIndex,
          length: 2,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Enter dates to see the\nmost accurate pricing",
                  style: TextStyle(
                      color: ColorConstant.primaryBlack,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 15,
                ),
                TabBar(
                    dividerHeight: 0,
                    indicatorColor: Colors.transparent,
                    indicator: null,
                    labelColor: ColorConstant.primaryBlack,
                    unselectedLabelColor:
                        ColorConstant.primaryBlack.withOpacity(.6),
                    tabs: [
                      Tab(
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 10, top: 8, bottom: 8, right: 2),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: ColorConstant.primaryBlack, width: 1),
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Icon(Icons.calendar_month_outlined),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Select dates",
                                style: TextStyle(
                                    color: ColorConstant.primaryBlack,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: ColorConstant.primaryBlack, width: 1),
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Icon(Icons.bed),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "1",
                                style: TextStyle(
                                    color: ColorConstant.primaryBlack,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Icon(Icons.person_2_sharp),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "2",
                                style: TextStyle(
                                    color: ColorConstant.primaryBlack,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      )
                    ]),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                SizedBox(
                  height: 210,
                  child: TabBarView(
                      children: [CalendarTab(), PersonSelectionTab()]),
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Text(
                        "Reset",
                        style: TextStyle(
                            fontSize: 18,
                            color: ColorConstant.primaryBlack,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                        decoration: BoxDecoration(
                            color: ColorConstant.primaryBlack.withOpacity(.1),
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          "Apply",
                          style: TextStyle(
                              color: ColorConstant.primaryBlack,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
