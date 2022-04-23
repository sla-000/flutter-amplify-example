import 'dart:async';
import 'dart:developer';

import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_example/models/OrderModel.dart';
import 'package:amplify_example/models/ShopModel.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import 'event.dart';
import 'state.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  OrdersBloc({
    required this.initialShop,
    required this.shopStream,
  }) : super(const OrdersState()) {
    on<OrdersEventInit>(_init);

    on<OrdersEventAdd>(_add);
    on<OrdersEventDelete>(_delete);

    on<OrdersEventOnData>(_onData);
    on<OrdersEventOnError>(_onError);

    add(const OrdersEvent.init());

    _shopSubscription = _subscribeToShop();
  }

  @protected
  final ShopModel? initialShop;
  @protected
  final Stream<ShopModel?> shopStream;

  late final StreamSubscription<ShopModel?> _shopSubscription;
  StreamSubscription<QuerySnapshot<OrderModel>>? _ordersSubscription;

  @override
  Future<void> close() {
    _shopSubscription.cancel();
    _ordersSubscription?.cancel();

    return super.close();
  }

  StreamSubscription<ShopModel?> _subscribeToShop() {
    _subscribeToOrders(initialShop);

    return shopStream.distinct((ShopModel? previous, ShopModel? next) => next?.name != previous?.name).listen(
      (ShopModel? shopModel) => _subscribeToOrders(shopModel),
      onError: (error, stackTrace) {
        log('_subscribeToShop', error: error, stackTrace: stackTrace);

        add(OrdersEvent.onError(error));
      },
    );
  }

  void _init(OrdersEventInit event, Emitter<OrdersState> emit) => emit(const OrdersState());

  Future<void> _add(OrdersEventAdd event, Emitter<OrdersState> emit) async {
    try {
      emit(state.copyWith(isBusy: true));

      await Amplify.DataStore.save(event.orderModel);
    } on Exception catch (error, stackTrace) {
      log('OrdersBloc: _add', error: error, stackTrace: stackTrace);
    } finally {
      emit(state.copyWith(isBusy: false));
    }
  }

  Future<void> _delete(OrdersEventDelete event, Emitter<OrdersState> emit) async {
    try {
      emit(state.copyWith(isBusy: true));

      await Amplify.DataStore.delete(event.orderModel);
    } on Exception catch (error, stackTrace) {
      log('OrdersBloc: _delete', error: error, stackTrace: stackTrace);
    } finally {
      emit(state.copyWith(isBusy: false));
    }
  }

  void _onData(OrdersEventOnData event, Emitter<OrdersState> emit) => emit(state.copyWith(
        orders: event.orders,
        error: null,
      ));

  void _onError(OrdersEventOnError event, Emitter<OrdersState> emit) => emit(state.copyWith(
        orders: [],
        error: event.error,
      ));

  void _subscribeToOrders(ShopModel? shop) {
    _ordersSubscription?.cancel();
    _ordersSubscription = null;

    if (shop == null) {
      return;
    }

    _ordersSubscription = Amplify.DataStore.observeQuery(
      OrderModel.classType,
      where: OrderModel.SHOPMODELID.eq(shop.id),
    ).listen(
      (QuerySnapshot<OrderModel> snapshot) => add(OrdersEvent.onData(snapshot.items)),
      onError: (error, stackTrace) {
        log('_ordersSubscription', error: error, stackTrace: stackTrace);

        add(OrdersEvent.onError(error));
      },
    );
  }
}
