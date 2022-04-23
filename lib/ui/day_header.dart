import 'package:amplify_example/utils/days.dart';
import 'package:flutter/material.dart';

class DayHeader extends StatelessWidget {
  const DayHeader({
    Key? key,
    required this.date,
  }) : super(key: key);

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Text(
      '${date.month}/${date.day}, ${date.weekday.isoWeekday(context)}',
      style: Theme.of(context).textTheme.headline6,
    );
  }
}
