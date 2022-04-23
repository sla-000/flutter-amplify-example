import 'package:amplify_example/models/OrderModel.dart';
import 'package:amplify_example/models/ShopModel.dart';
import 'package:amplify_example/ui/client_name.dart';
import 'package:amplify_example/ui/slot_action.dart';
import 'package:flutter/material.dart';

const double kHoursWidth = 120;
const double kActionWidth = 100;

class HourSlotsHeader extends StatelessWidget {
  const HourSlotsHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: kHoursWidth,
          child: Text(
            'Time slot',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        Expanded(
          child: Text(
            'Client name',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        SizedBox(
          width: kActionWidth,
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text(
              'Action',
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.right,
            ),
          ),
        ),
      ],
    );
  }
}

class HourSlotData extends StatelessWidget {
  const HourSlotData({
    Key? key,
    required this.shop,
    required this.orders,
    required this.startHour,
    required this.date,
  }) : super(key: key);

  final ShopModel shop;
  final List<OrderModel> orders;
  final int startHour;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: kHoursWidth,
          child: Text('$startHour:00 .. ${startHour + 1}:00'),
        ),
        Expanded(
          child: ClientName(
            orders: orders,
            startHour: startHour,
            date: date,
          ),
        ),
        SizedBox(
          width: kActionWidth,
          child: SlotAction(
            shop: shop,
            orders: orders,
            startHour: startHour,
            date: date,
          ),
        ),
      ],
    );
  }
}
