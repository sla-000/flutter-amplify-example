import 'package:amplify_example/models/OrderModel.dart';
import 'package:amplify_example/utils/days.dart';

List<OrderModel> getOrdersForDatetime(List<OrderModel> orders, DateTime date, int startHour) {
  final DateTime startDate = startDatetime(date, startHour);
  final DateTime endDate = endDatetime(date, startHour);

  final List<OrderModel> filteredOrders = orders
      .where((OrderModel orderModel) => orderModel.start != null && orderModel.end != null)
      .where(
        (OrderModel orderModel) =>
            orderModel.start!.getDateTimeInUtc().isBefore(endDate) &&
            orderModel.end!.getDateTimeInUtc().isAfter(startDate),
      )
      .toList();

  return filteredOrders;
}
