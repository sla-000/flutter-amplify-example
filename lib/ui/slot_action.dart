import 'package:amplify_example/blocs/orders/bloc.dart';
import 'package:amplify_example/blocs/orders/event.dart';
import 'package:amplify_example/di.dart';
import 'package:amplify_example/models/OrderModel.dart';
import 'package:amplify_example/models/ShopModel.dart';
import 'package:amplify_example/ui/dialogs.dart';
import 'package:amplify_example/utils/days.dart';
import 'package:amplify_example/utils/orders.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

class SlotAction extends StatelessWidget {
  const SlotAction({
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
    List<OrderModel> filteredOrders = getOrdersForDatetime(orders, date, startHour);

    if (filteredOrders.isEmpty) {
      return Align(
        alignment: Alignment.centerRight,
        child: TextButton(
          onPressed: () async {
            final String? clientName = await showDialog<String?>(
              context: context,
              builder: (BuildContext context) => const ClientNameDialog(),
            );

            if (clientName == null) {
              return;
            }

            final DateTime startDate = startDatetime(date, startHour);
            final DateTime endDate = endDatetime(date, startHour);

            final OrderModel orderModel = OrderModel(
              shopmodelID: shop.id,
              start: TemporalDateTime(startDate),
              end: TemporalDateTime(endDate),
              clientName: clientName,
            );

            di<OrdersBloc>().add(OrdersEvent.add(orderModel));
          },
          child: const Text('ADD'),
        ),
      );
    }

    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () async {
          final bool? clear = await showDialog<bool?>(
            context: context,
            builder: (BuildContext context) => const ClearDialog(),
          );

          if (clear == null || !clear) {
            return;
          }

          for (final order in filteredOrders) {
            di<OrdersBloc>().add(OrdersEvent.delete(order));
          }
        },
        child: const Text('CLEAR'),
      ),
    );
  }
}
