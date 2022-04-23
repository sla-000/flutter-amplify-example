// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:amplify_example/blocs/orders/bloc.dart';
import 'package:amplify_example/blocs/orders/event.dart';
import 'package:amplify_example/blocs/orders/state.dart';
import 'package:amplify_example/models/OrderModel.dart';
import 'package:amplify_example/models/ShopModel.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  blocTest<OrdersBloc, OrdersState>(
    'OrdersBloc, onData/onError',
    build: _buildBloc,
    act: (OrdersBloc bloc) => bloc
      ..add(const OrdersEvent.init())
      ..add(OrdersEvent.onData([OrderModel(shopmodelID: '123')]))
      ..add(const OrdersEvent.onError(FormatException('qwe')))
      ..add(const OrdersEvent.init()),
    wait: const Duration(milliseconds: 100),
    expect: () => <Matcher>[
      equals(const OrdersState()),
      predicate<OrdersState>((OrdersState state) => state.orders[0].shopmodelID == '123'),
      predicate<OrdersState>((OrdersState state) => state.error is FormatException),
      equals(const OrdersState()),
    ],
  );
}

OrdersBloc _buildBloc() => OrdersBloc(
      initialShop: null,
      shopStream: Stream<ShopModel?>.value(null),
    );
