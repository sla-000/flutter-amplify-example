import 'package:amplify_example/models/ShopModel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class ShopState with _$ShopState {
  const factory ShopState({
    ShopModel? shop,
    Exception? error,
  }) = _ShopState;

  const ShopState._();

  bool get hasError => error != null;
  bool get hasData => shop != null;
}
