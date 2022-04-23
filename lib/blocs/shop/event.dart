import 'package:amplify_example/models/ShopModel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class ShopEvent with _$ShopEvent {
  const factory ShopEvent.init() = ShopEventInit;

  const factory ShopEvent.setShop(ShopModel shop) = ShopEventSetShop;
  const factory ShopEvent.setError(Exception error) = ShopEventSetError;
}
