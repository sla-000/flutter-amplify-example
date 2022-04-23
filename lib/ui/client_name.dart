import 'package:amplify_example/models/OrderModel.dart';
import 'package:amplify_example/utils/orders.dart';
import 'package:flutter/material.dart';

class ClientName extends StatelessWidget {
  const ClientName({
    Key? key,
    required this.orders,
    required this.startHour,
    required this.date,
  }) : super(key: key);

  final List<OrderModel> orders;
  final int startHour;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    List<OrderModel> filteredOrders = getOrdersForDatetime(orders, date, startHour);

    if (filteredOrders.isEmpty) {
      return Text(
        'Available',
        style: Theme.of(context).textTheme.bodyText2?.copyWith(
              color: Theme.of(context).textTheme.bodyText2?.color?.withAlpha(80),
            ),
      );
    }

    final List<String> clientsNames =
        filteredOrders.map((OrderModel orderModel) => orderModel.clientName).whereType<String>().toList();

    clientsNames.sort();

    return Text(
      clientsNames.join(', '),
      maxLines: 5,
      overflow: TextOverflow.ellipsis,
    );
  }
}
