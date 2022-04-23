import 'package:amplify_example/models/OrderModel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState({
    @Default(<OrderModel>[]) List<OrderModel> orders,
    @Default(false) bool isBusy,
    Exception? error,
  }) = _OrdersState;

  const OrdersState._();

  bool get hasError => error != null;
  bool get hasData => orders.isNotEmpty;
}
