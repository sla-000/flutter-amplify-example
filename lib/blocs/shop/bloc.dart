import 'dart:async';
import 'dart:developer';

import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_example/models/ModelProvider.dart';
import 'package:amplify_example/models/ShopModel.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'event.dart';
import 'state.dart';

class ShopBloc extends Bloc<ShopEvent, ShopState> {
  ShopBloc() : super(const ShopState()) {
    on<ShopEventInit>(_init);

    on<ShopEventSetShop>(_setShop);

    on<ShopEventSetError>(_setError);

    add(const ShopEvent.init());

    _shopSubscription = _subscribeToShop();
  }

  late final StreamSubscription<QuerySnapshot<ShopModel>> _shopSubscription;

  @override
  Future<void> close() {
    _shopSubscription.cancel();

    return super.close();
  }

  StreamSubscription<QuerySnapshot<ShopModel>> _subscribeToShop() {
    return Amplify.DataStore.observeQuery(ShopModel.classType).listen(
      (QuerySnapshot<ShopModel> snapshot) {
        if (snapshot.items.isEmpty) {
          throw Exception('No shops');
        }

        add(ShopEvent.setShop(snapshot.items.first));
      },
      onError: (error, stackTrace) {
        log('_subscribeOnShop', error: error, stackTrace: stackTrace);

        add(ShopEvent.setError(error));
      },
    );
  }

  void _init(ShopEventInit event, Emitter<ShopState> emit) => emit(const ShopState());

  void _setShop(ShopEventSetShop event, Emitter<ShopState> emit) => emit(
        state.copyWith(
          shop: event.shop,
          error: null,
        ),
      );

  void _setError(ShopEventSetError event, Emitter<ShopState> emit) => emit(
        state.copyWith(
          shop: null,
          error: event.error,
        ),
      );
}
