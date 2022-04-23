import 'package:amplify_example/utils/context_ext.dart';
import 'package:flutter/cupertino.dart';

const Duration kDaysAhead = Duration(days: 30);

String indexToWeekday(BuildContext context, int weekdayIndex) {
  final Map<int, String> kIndexToWeekday = <int, String>{
    0: context.l10n.monday,
    1: context.l10n.tuesday,
    2: context.l10n.wednesday,
    3: context.l10n.thursday,
    4: context.l10n.friday,
    5: context.l10n.saturday,
    6: context.l10n.sunday,
  };

  return kIndexToWeekday[weekdayIndex]!;
}

extension Weekday on int {
  String zeroWeekday(BuildContext context) => indexToWeekday(context, this);
  String isoWeekday(BuildContext context) => indexToWeekday(context, this - 1);
}

List<DateTime> calcCalendar(Set<int> workingWeekDays) {
  if (workingWeekDays.isEmpty) {
    return [];
  }

  final DateTime currentDate = DateTime.now();
  final DateTime date = DateTime(currentDate.year, currentDate.month, currentDate.day);
  final DateTime lastDate = date.add(kDaysAhead);

  DateTime iterateDate = date;

  final List<DateTime> calendar = [];

  while (iterateDate.isBefore(lastDate)) {
    if (isWorkingWeekday(workingWeekDays, iterateDate)) {
      calendar.add(iterateDate);
    }

    iterateDate = calcNextDay(iterateDate);
  }

  return calendar;
}

bool isWorkingWeekday(Set<int> workingWeekDays, DateTime date) => workingWeekDays.contains(date.weekday - 1);

DateTime calcNextDay(DateTime iterateDate) => iterateDate.add(const Duration(days: 1));

DateTime endDatetime(DateTime date, int startHour) => DateTime.utc(date.year, date.month, date.day, startHour + 1);

DateTime startDatetime(DateTime date, int startHour) => DateTime.utc(date.year, date.month, date.day, startHour);
