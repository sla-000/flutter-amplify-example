import 'package:amplify_example/models/OrderModel.dart';
import 'package:amplify_example/models/ShopModel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.init() = OrdersEventInit;

  const factory OrdersEvent.onData(List<OrderModel> orders) = OrdersEventOnData;
  const factory OrdersEvent.onError(Exception error) = OrdersEventOnError;

  const factory OrdersEvent.add(OrderModel orderModel) = OrdersEventAdd;
  const factory OrdersEvent.delete(OrderModel orderModel) = OrdersEventDelete;
}
