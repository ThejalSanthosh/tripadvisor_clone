import 'package:flutter/material.dart';
import 'package:scrollable_clean_calendar/controllers/clean_calendar_controller.dart';
import 'package:scrollable_clean_calendar/scrollable_clean_calendar.dart';
import 'package:scrollable_clean_calendar/utils/enums.dart';

class CalendarTab extends StatelessWidget {
  CalendarTab({super.key});

  final calendarController = CleanCalendarController(
    minDate: DateTime.now(),
    maxDate: DateTime.now().add(const Duration(days: 365)),
    onRangeSelected: (firstDate, secondDate) {},
    onDayTapped: (date) {},
    onPreviousMinDateTapped: (date) {

      
    },
    onAfterMaxDateTapped: (date) {},
    weekdayStart: DateTime.monday,
  );

  @override
  Widget build(BuildContext context) {
    return ScrollableCleanCalendar(
      calendarController: calendarController,
      layout: Layout.DEFAULT,
    );
  }
}
